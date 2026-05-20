fx_version 'cerulean'
game 'gta5'

name 'w2f_adminspawner'
author 'Wayy2Flyyy'
description 'w2f — /adminitems opens the AdminItems inventory shop (image-backed items @ $0). QBX, QBCore, and ESX compatible.'
version '1.1.0'

shared_script '@ox_lib/init.lua'

server_script 'server.lua'

files {
    'LICENSE',
}

dependencies {
    'ox_lib',
    'ox_inventory',
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
