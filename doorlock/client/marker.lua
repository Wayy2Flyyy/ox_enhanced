--- ox_inventory "Underworld Dossier" world markers
--- - drawDot: small sphere (placement raycast)
--- - drawEKey: compact "E" key cap mirroring `.inventory-slot` (TL+BR notch,
---            faint warm-bone border, inset inner shadow, amber/blood accent)
local Marker = {}

-- ─── Placement raycast dot (unchanged) ────────────────────────────────────

local dotPalette = {
	active = { core = { 255, 170, 26, 235 }, glow = { 255, 170, 26, 70 } },
	locked = { core = { 214, 53, 59, 235 },  glow = { 214, 53, 59, 65 } },
	idle   = { core = { 141, 134, 117, 210 }, glow = { 141, 134, 117, 45 } },
}

local function drawSphereLayer(coords, scale, colour)
	DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
		scale, scale, scale, colour[1], colour[2], colour[3], colour[4],
		false, false, 0, true, false, false, false)
end

---@param coords vector3
---@param variant? 'active' | 'locked' | 'idle'
function Marker.drawDot(coords, variant)
	local style = dotPalette[variant or 'active'] or dotPalette.active
	drawSphereLayer(coords, 0.11, style.glow)
	drawSphereLayer(coords, 0.045, style.core)
end

-- ─── "E" key cap — `.inventory-slot` lookalike ─────────────────────────────
-- Mirrors ox_inventory web/src/index.scss tokens:
--   --inv-slot-bg:        rgba(14, 12, 9, 0.78)
--   --inv-slot-border:    rgba(255, 220, 160, 0.08)
--   --inv-slot-notch:     11px (TL + BR only, polygon clip-path)
--   inset 0 2px 12px rgba(0, 0, 0, 0.55)   ← top inset shadow
--   inset 0 0 0 1px rgba(255, 220, 160, 0.04)  ← warm bone sheen
-- Drawn with SetDrawOrigin so the cap is a fixed screen size at any distance.

local INV = {
	slot_bg          = { 14, 12, 9, 230 },          -- a touch denser for legibility
	slot_border      = { 255, 220, 160, 38 },       -- faint warm bone (1px)
	bone             = { 236, 228, 210, 245 },
	bone_muted       = { 141, 134, 117, 220 },
	inset_shadow     = { 0, 0, 0, 130 },
	inset_sheen      = { 255, 220, 160, 22 },
	amber            = { 255, 170, 26 },
	amber_warm       = { 255, 208, 120 },
	blood            = { 214, 53, 59 },
}

-- Compact, sleek geometry (screen-relative — SetDrawOrigin anchors to 3D)
local CAP_W       = 0.0185
local CAP_H       = 0.030
local BORDER      = 0.0008                -- ~1px outer border thickness
local INNER_W     = CAP_W - BORDER * 2
local INNER_H     = CAP_H - BORDER * 2
local NOTCH       = 0.0030                -- corner notch length (matches --inv-slot-notch ratio)
local NOTCH_W     = 0.00075               -- corner tick line weight
local INSET_TOP_H = 0.0014
local SHEEN_H     = 0.00055
local UNDERLINE_H = 0.0006

---Draw a compact `.inventory-slot`-styled "E" key cap above the door.
---@param coords vector3
---@param state integer 0 = unlocked, 1 = locked
function Marker.drawEKey(coords, state)
	local accent = state == 1 and INV.blood or INV.amber

	SetDrawOrigin(coords.x, coords.y, coords.z + 0.42)

	-- Soft outer halo (very subtle, matches inventory slot hover glow)
	DrawRect(0, 0, CAP_W + 0.0075, CAP_H + 0.0095, accent[1], accent[2], accent[3], 14)

	-- 1px faint warm-bone border ring
	DrawRect(0, 0, CAP_W, CAP_H,
		INV.slot_border[1], INV.slot_border[2], INV.slot_border[3], INV.slot_border[4])

	-- Inner charcoal panel fill
	DrawRect(0, 0, INNER_W, INNER_H,
		INV.slot_bg[1], INV.slot_bg[2], INV.slot_bg[3], INV.slot_bg[4])

	-- Top inset shadow (depth — mirrors `inset 0 2px 12px rgba(0,0,0,0.55)`)
	DrawRect(0, -INNER_H * 0.5 + INSET_TOP_H * 0.5,
		INNER_W - 0.0008, INSET_TOP_H,
		INV.inset_shadow[1], INV.inset_shadow[2], INV.inset_shadow[3], INV.inset_shadow[4])

	-- Warm bone top sheen (mirrors `inset 0 0 0 1px rgba(255,220,160,0.04)`)
	DrawRect(0, -INNER_H * 0.5 + INSET_TOP_H + SHEEN_H * 0.5,
		INNER_W - 0.0014, SHEEN_H,
		INV.inset_sheen[1], INV.inset_sheen[2], INV.inset_sheen[3], INV.inset_sheen[4])

	-- TL notch (two thin amber/blood strips forming the corner cut)
	DrawRect(-CAP_W * 0.5 + NOTCH * 0.5 + BORDER, -CAP_H * 0.5 + NOTCH_W * 0.5 + BORDER,
		NOTCH, NOTCH_W, accent[1], accent[2], accent[3], 235)
	DrawRect(-CAP_W * 0.5 + NOTCH_W * 0.5 + BORDER, -CAP_H * 0.5 + NOTCH * 0.5 + BORDER,
		NOTCH_W, NOTCH, accent[1], accent[2], accent[3], 235)

	-- BR notch (mirror of TL)
	DrawRect(CAP_W * 0.5 - NOTCH * 0.5 - BORDER, CAP_H * 0.5 - NOTCH_W * 0.5 - BORDER,
		NOTCH, NOTCH_W, accent[1], accent[2], accent[3], 235)
	DrawRect(CAP_W * 0.5 - NOTCH_W * 0.5 - BORDER, CAP_H * 0.5 - NOTCH * 0.5 - BORDER,
		NOTCH_W, NOTCH, accent[1], accent[2], accent[3], 235)

	-- "E" — bone, centered
	SetTextFont(4)
	SetTextScale(0.0, 0.32)
	SetTextColour(INV.bone[1], INV.bone[2], INV.bone[3], INV.bone[4])
	SetTextOutline()
	SetTextCentre(true)
	SetTextEntry('STRING')
	AddTextComponentString('E')
	DrawText(0, -0.013)

	-- State underline at the bottom of the cap
	DrawRect(0, CAP_H * 0.5 - BORDER - UNDERLINE_H * 0.5,
		INNER_W * 0.55, UNDERLINE_H,
		accent[1], accent[2], accent[3], 220)

	ClearDrawOrigin()
end

return Marker
