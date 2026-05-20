---@class W2FAdminSpawnerConfig
return {
    command = 'adminitems',
    shopId = 'AdminItems',
    shopLabel = 'Admin Item Spawner',

    --- ESX xPlayer.getGroup() values treated as admin
    esxAdminGroups = {
        admin = true,
        superadmin = true,
    },

    --- QBCore QBCore.Functions.HasPermission(source, name)
    qbPermissions = { 'admin', 'god' },

    --- QBX exports.qbx_core:HasGroup(source, filter) — minimum grade per group
    qbxAdminGroups = {
        admin = 0,
        god = 0,
    },
}
