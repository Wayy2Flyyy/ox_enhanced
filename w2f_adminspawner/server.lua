--- w2f_adminspawner (Wayy2Flyyy)
--- /adminitems — opens the AdminItems shop from ox_inventory:
--- every item from Items() with a matching web/images/*.png @ price 0.
---
--- Permission: ACE group.admin and/or framework admin (QBX / QBCore / ESX).
--- ACE example in server.cfg:
---   add_ace identifier.steam:XXXX group.admin allow

local Config = lib.load('config') --[[@as W2FAdminSpawnerConfig]]
local RESOURCE = 'w2f_adminspawner'
local OX_INVENTORY = 'ox_inventory'
local shopHooksRegistered = false

---@param source number
---@return boolean
local function isAceAdmin(source)
    return IsPlayerAceAllowed(source, 'group.admin')
        or IsPlayerAceAllowed(source, ('command.%s'):format(Config.command))
end

---@param source number
---@return boolean
local function isQbxAdmin(source)
    if not GetResourceState('qbx_core'):find('start') then
        return false
    end

    local ok, result = pcall(function()
        return exports.qbx_core:HasGroup(source, Config.qbxAdminGroups)
    end)

    return ok and result == true
end

---@param source number
---@return boolean
local function isQbAdmin(source)
    if not GetResourceState('qb-core'):find('start') then
        return false
    end

    local ok, result = pcall(function()
        local QBCore = exports['qb-core']:GetCoreObject()

        for i = 1, #Config.qbPermissions do
            if QBCore.Functions.HasPermission(source, Config.qbPermissions[i]) then
                return true
            end
        end

        return false
    end)

    return ok and result == true
end

---@param source number
---@return boolean
local function isEsxAdmin(source)
    if not GetResourceState('es_extended'):find('start') then
        return false
    end

    local ok, result = pcall(function()
        local ESX = exports.es_extended:getSharedObject()
        local xPlayer = ESX.GetPlayerFromId(source)

        if not xPlayer then
            return false
        end

        return Config.esxAdminGroups[xPlayer.getGroup()] == true
    end)

    return ok and result == true
end

---@param source number
---@return boolean
local function isAdmin(source)
    if isAceAdmin(source) then
        return true
    end

    return isQbxAdmin(source) or isQbAdmin(source) or isEsxAdmin(source)
end

---@param itemName string
---@return boolean
local function itemHasImage(itemName)
    local candidates = { itemName }

    if itemName:lower() ~= itemName then
        candidates[#candidates + 1] = itemName:lower()
    end

    if itemName:sub(1, 7) == 'WEAPON_' then
        candidates[#candidates + 1] = itemName:upper()
    end

    for i = 1, #candidates do
        local imagePath = ('web/images/%s.png'):format(candidates[i])
        local file = LoadResourceFile(OX_INVENTORY, imagePath)

        if file and file ~= '' then
            return true
        end
    end

    return false
end

local function registerAdminShopHooks()
    if shopHooksRegistered or GetResourceState(OX_INVENTORY) ~= 'started' then
        return
    end

    local ok = pcall(function()
        exports.ox_inventory:registerHook('openShop', function(payload)
            if payload.label == Config.shopLabel then
                return isAdmin(payload.source)
            end
        end)

        exports.ox_inventory:registerHook('buyItem', function(payload)
            return isAdmin(payload.source)
        end, {
            typeFilter = { [Config.shopId] = true },
        })
    end)

    if ok then
        shopHooksRegistered = true
    end
end

local function rebuildAdminShop()
    local okFetch, defs = pcall(function()
        return exports.ox_inventory:Items()
    end)

    if not okFetch or type(defs) ~= 'table' then
        return lib.print.error(('%s: could not read exports.ox_inventory:Items(); %s not built.'):format(RESOURCE, Config.shopId))
    end

    local inventory = {}
    local skipped = 0

    for itemName in pairs(defs) do
        if type(itemName) == 'string' then
            if itemHasImage(itemName) then
                inventory[#inventory + 1] = { name = itemName, price = 0 }
            else
                skipped += 1
            end
        end
    end

    table.sort(inventory, function(a, b)
        return a.name:lower() < b.name:lower()
    end)

    local okReg = pcall(function()
        exports.ox_inventory:RegisterShop(Config.shopId, {
            name = Config.shopLabel,
            inventory = inventory,
        })
    end)

    if not okReg then
        return lib.print.error(('%s: RegisterShop %s failed (is inventory started?).'):format(RESOURCE, Config.shopId))
    end

    lib.print.info(('%s: %s rebuilt — %d items with images (%d skipped, no image)'):format(RESOURCE, Config.shopId, #inventory, skipped))
    registerAdminShopHooks()
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == OX_INVENTORY or resourceName == GetCurrentResourceName() then
        SetTimeout(250, function()
            rebuildAdminShop()
            registerAdminShopHooks()
        end)
    end
end)

CreateThread(function()
    Wait(500)
    rebuildAdminShop()
    registerAdminShopHooks()
end)

lib.addCommand(Config.command, {
    help = 'Open the admin item spawner (items with images only, free)',
}, function(source)
    if not isAdmin(source) then
        return lib.notify(source, {
            type = 'error',
            description = 'You do not have permission to use this command.',
        })
    end

    TriggerClientEvent('ox_inventory:openInventory', source, 'shop', { type = Config.shopId })
end)
