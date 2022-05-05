execute as @s[nbt={Item:{id:"minecraft:bundle",Count:1b,tag:{Trunk:1b}}}] at @s run function hp:item_functions/trunk/summon
execute as @s[tag=!trunk,tag=!FloorCraft,nbt={Item:{id:"minecraft:paper",Count:1b}},nbt=!{Item:{tag:{IsPackage:1b}}}] run tag @s add FloorCraft
execute as @s[tag=!trunk,tag=FloorCraft,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:paper",Count:1b}}] run function hp:crafting/package

execute as @s[nbt={Item:{tag:{Portkey:1b,PortkeyActive:0b}}}] run tag @s add portkeyItem
execute as @s[nbt={Item:{tag:{Portkey:1b,PortkeyActive:0b}}}] run tag @s add spellEntity
