# ox_enhanced

**ox_enhanced** is a W2F enhancement pack for the Overextended / ox community.

<img width="1122" height="1402" alt="image" src="https://github.com/user-attachments/assets/25bea79d-d6c2-40e2-8846-f6a5507a3d35" />


It brings together:

- `inventory` — enhanced inventory (fork of ox_inventory)
- `target` — enhanced targeting (fork of ox_target)
- `doorlock` — enhanced door locks (fork of ox_doorlock)
- `w2f_adminspawner` — admin item spawner

The goal is to make all three scripts feel like one clean, modern, connected system instead of three separate resources.

> **On your server:** install under **`resources/[ox]/`** and **rename** to `ox_inventory`, `ox_target`, `ox_doorlock` (standard Ox resource names). The repo stays unprefixed so it is not confused with official Overextended releases on GitHub.  
> See [Server installation](#server-installation-add-to-ox).

---

## What is changed?

### inventory

- Full custom dark/gold UI theme
- Cleaner inventory design
- Pre-built UI in `web/build` (no npm required to run the resource)
- Admin item spawner via `w2f_adminspawner` (`/adminitems`)
- 150+ custom items/images
- Custom food, drinks, police, weed, medical, valuables, and utility items
- Improved item image setup
- Shop/search support
- Updated shop items

### target

- Cleaner target interaction design
- Minimal target style
- Better matching with the inventory theme
- Designed to feel smooth, clear, and modern

### doorlock

- Custom door interaction style
- Clean visual door prompt
- Better matching with the rest of the UI
- Designed to fit the same W2F theme

### w2f_adminspawner

- `/adminitems` opens a free **AdminItems** shop in the right inventory panel
- Lists every inventory item that has a matching `web/images/*.png` (price `$0`)
- Works with **QBX**, **QBCore**, and **ESX** (ACE `group.admin` and/or framework admin)
- Shop is rebuilt automatically when `ox_inventory` or `w2f_adminspawner` starts

---

## Design Style

This pack uses a dark W2F-style theme:

- Black/dark backgrounds
- Gold/orange highlights
- Clean panels
- Sharp UI spacing
- Modern inventory slots
- Clear item icons
- Better roleplay-server presentation

---

## Requirements

You still need the normal Overextended dependencies:

- `ox_lib`
- `oxmysql`
- A supported framework such as **Qbox**, **QBCore**, **ESX**, ox_core, or ND Core

This pack is an enhanced version of those resources, not a full framework replacement.

---

## Server installation (add to `[ox]`)

### Repo name vs server name

| Folder in **this GitHub repo** | Rename to on your server (`resources/[ox]/`) |
|--------------------------------|-----------------------------------------------|
| `inventory/` | **`ox_inventory/`** |
| `target/` | **`ox_target/`** |
| `doorlock/` | **`ox_doorlock/`** |
| `w2f_adminspawner/` | `w2f_adminspawner/` (no rename) |

FiveM uses the **folder name** as the resource name. Your `server.cfg` must `ensure` the **`ox_`** names on the right.

### Install steps

1. Copy the four resources into **`resources/[ox]/`** (same folder as `ox_lib` and `oxmysql`).
2. **Rename** `inventory` → `ox_inventory`, `target` → `ox_target`, `doorlock` → `ox_doorlock`.
3. Remove any old official copies of those three if you are upgrading in place.
4. Add the ensures below.

```txt
resources/
  [ox]/
    ox_lib/
    oxmysql/
    ox_inventory/      ← renamed from repo folder "inventory"
    ox_target/         ← renamed from repo folder "target"
    ox_doorlock/       ← renamed from repo folder "doorlock"
    w2f_adminspawner/
```

### `server.cfg`

```cfg
# --- [ox] stack ---
ensure ox_lib
ensure oxmysql

ensure ox_target
ensure ox_inventory
ensure ox_doorlock
ensure w2f_adminspawner
```

`ox_target` should start before `ox_inventory` when `inventory:target` is enabled (convar name unchanged).

**Do not** `ensure inventory`, `ensure target`, or `ensure doorlock` — those names only exist in the repo, not on your server.

---

## Recommended Start Order

Add this to your `server.cfg` (after framework):

```cfg
ensure ox_lib
ensure oxmysql

ensure ox_target
ensure ox_inventory
ensure ox_doorlock
ensure w2f_adminspawner
```

If you use a framework, start it before the ox resources:

```cfg
ensure qbx_core
ensure qbx_vehicles

ensure ox_target
ensure ox_inventory
ensure ox_doorlock
ensure w2f_adminspawner
```

For QBCore:

```cfg
ensure qb-core

ensure ox_target
ensure ox_inventory
ensure ox_doorlock
ensure w2f_adminspawner
```

For ESX:

```cfg
ensure es_extended

ensure ox_target
ensure ox_inventory
ensure ox_doorlock
ensure w2f_adminspawner
```

---

## Migration from official Ox resources

Replacing **communityox / Overextended** `ox_inventory`, `ox_target`, or `ox_doorlock`:

1. Back up `[ox]/ox_inventory`, `ox_target`, `ox_doorlock`.
2. Copy W2F **`inventory`**, **`target`**, **`doorlock`** from this repo into `[ox]/`.
3. **Rename** them to `ox_inventory`, `ox_target`, `ox_doorlock` (see table above).
4. Keep the same `ensure ox_inventory` / `ox_target` / `ox_doorlock` lines in `server.cfg`.
5. Swap `qbx_adminspawner` for `w2f_adminspawner` if used (`ensure w2f_adminspawner`).

**Scripts & exports:** no changes needed for most servers — still `exports.ox_inventory`, `ox_inventory:openInventory`, `exports.ox_target`, `ox_doorlock:setState`, etc.

| Change on server | Action |
|-----------------|--------|
| `qbx_adminspawner` | Replace with `w2f_adminspawner` |
| Repo folder `inventory` | Rename to `ox_inventory` after copy |
| Repo folder `target` | Rename to `ox_target` after copy |
| Repo folder `doorlock` | Rename to `ox_doorlock` after copy |

### Database — no migration required

- Stashes / player inventory: table **`ox_inventory`**
- Doors: table **`ox_doorlock`**

### ESX / framework config

- **ESX:** keep `Config.CustomInventory = "ox"` in `es_extended`.
- **PEFCL:** set `config.useFrameworkIntegration.resource` to **`ox_inventory`**.

### Official deps (unchanged)

- `ox_lib`
- `oxmysql`

---

## Admin item spawner

`w2f_adminspawner` registers the **AdminItems** shop at runtime (not in `ox_inventory/data/shops.lua` on your server). Only items with an image file are listed.

**Command:** `/adminitems`

**Who can use it:**

| Method | Example |
|--------|---------|
| ACE | `add_ace identifier.steam:XXXX group.admin allow` |
| QBX | `admin` or `god` group |
| QBCore | `admin` or `god` permission |
| ESX | `admin` or `superadmin` group |

Tune groups in `w2f_adminspawner/config.lua` if your server uses different names.

---

## Inventory Images

Item images should follow this format:

```txt
ox_inventory/web/images/item_name.png
```
(on server — inside the renamed `ox_inventory` folder)

The image name must match the item name inside `items.lua`.

Example:

```lua
['classic_cheeseburger'] = {
    label = 'Classic Cheeseburger',
    weight = 350,
    stack = true,
    close = true,
}
```

Image file:

```txt
classic_cheeseburger.png
```

---

## Notes

- Install under **`resources/[ox]/`**, then **rename** repo folders to `ox_inventory`, `ox_target`, `ox_doorlock` on the server.
- Do not rename item images unless they also match `items.lua`.
- Do not remove `web/build` from `ox_inventory` on your server — FiveM loads the compiled UI from there; end users do not need npm.
- UI devs: edit `inventory/web/src` in the **repo**, run `npm run build` in `inventory/web`, commit `web/build`, then deploy the renamed `ox_inventory` folder.
- `w2f_adminspawner` must start after `ox_inventory`.
- GitHub repo folders are unprefixed (`inventory`, etc.); **live server folders use `ox_`**.
- Make sure your database connection is working before starting the scripts.
- If item icons are missing, check that the image filename matches the item key exactly.

---

## Credits

Built from the Overextended / communityox projects.

Enhanced and styled by **W2F / Wayy2Flyyy**.

Resources included (repo folders → **rename on server**):

- `inventory` → `ox_inventory`
- `target` → `ox_target`
- `doorlock` → `ox_doorlock`
- `w2f_adminspawner`

---

## License (GPL-3.0)

This pack is based on **GPL-3.0-or-later** Overextended / communityox resources. If you redistribute it, you must comply with the GPL, including license terms and **Corresponding Source** for any object code you ship.

**Full compliance guide:** [`GPL-3.0-NOTICE.md`](GPL-3.0-NOTICE.md)

| Resource | Source in this repo? |
|----------|----------------------|
| `inventory` | Yes — Lua + `web/src` + `web/build` |
| `target` | Yes — Lua + `web/` (HTML/JS/CSS) |
| `doorlock` | Lua/SQL/locales yes; **UI build only** — see below |
| `w2f_adminspawner` | Yes — all Lua (`LICENSE` in resource) |

### doorlock UI (GPL Corresponding Source)

We **do not** bundle the doorlock UI development tree (`web/src` from upstream). This repo only includes **`doorlock/web/build/`** (compiled NUI), same as upstream release zips.

GPL-3.0 still requires recipients to obtain Corresponding Source for that UI:

1. **Upstream (recommended):** [communityox/ox_doorlock `v1.22.0` → `web/`](https://github.com/communityox/ox_doorlock/tree/v1.22.0/web)  
2. **In-repo docs:** [`doorlock/web/CORRESPONDING-SOURCE.md`](doorlock/web/CORRESPONDING-SOURCE.md)  
3. **Written offer (§6(b)):** [`doorlock/web/WRITTEN-OFFER.txt`](doorlock/web/WRITTEN-OFFER.txt)

W2F changes to doorlock outside the NUI (e.g. markers, config) are in this repository as Lua source.

### Redistributors

- Keep each resource’s `LICENSE` and copyright notices.
- Do not strip GPL terms from `inventory`, `target`, or `doorlock`.
- If you ship `doorlock/web/build/`, also point users to the UI source locations above (or honor the written offer).
