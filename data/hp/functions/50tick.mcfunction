schedule function hp:50tick 50t

execute as @e[tag=choking] run effect give @s minecraft:wither 1 3 true

effect give @a[tag=hasCold] minecraft:nausea 5 128 true
effect give @a[tag=hasColdBad] minecraft:wither 1 0 true
effect give @a[tag=hasColdVeryBad] minecraft:wither 1 1 true

execute as @e[tag=deepCut] run effect give @s wither 1 2 true
execute as @e[tag=deepCut] at @s run particle block redstone_block ~ ~1 ~ .1 .1 .1 0 10

execute as @e[type=armor_stand,tag=caterwaulingCharm] at @s as @a if score @s UID = @e[type=armor_stand,tag=caterwaulingCharm,limit=1,sort=nearest] UID run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0 10 normal @s
execute as @e[type=armor_stand,tag=caterwaulingCharm] at @s as @a[distance=..10] unless score @s UID = @e[type=armor_stand,tag=caterwaulingCharm,limit=1,sort=nearest] UID as @e[type=armor_stand,tag=caterwaulingCharm,limit=1,sort=nearest] run function hp:spells/c/caterwauling_charm/sound

execute as @e[type=armor_stand,tag=caveInimicum] at @s as @a[distance=..8] if score @s UID = @e[type=armor_stand,tag=caveInimicum,limit=1,sort=nearest] UID run function hp:spells/c/cave_inimicum/particle

execute as @a[nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{Wand:1b,Set:0b}}}] run function hp:wand/set_lore
execute as @a[predicate=hp:player/holding_item,predicate=hp:wand/wand_mainhand] store result score @s wandType run data get entity @s SelectedItem.tag.Wood



execute as @e[type=item,tag=!FloorCraft,nbt={Item:{id:"minecraft:paper",Count:1b}},nbt=!{Item:{tag:{IsPackage:1b}}}] run tag @s add FloorCraft
execute as @e[type=item,tag=FloorCraft,nbt={Item:{id:"minecraft:paper",Count:1b}}] at @s if entity @e[type=item,distance=..1,nbt=!{Item:{id:"minecraft:paper",Count:1b}}] run function hp:crafting/package

execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Portkey:1b,PortkeyActive:0b}}}] run tag @s add portkeyItem
execute as @e[type=item,nbt={OnGround:1b,Item:{tag:{Portkey:1b,PortkeyActive:0b}}}] run tag @s add spellEntity


execute as @e[type=armor_stand,tag=specialEntity,tag=left] if predicate hp:player/holding_item at @s as @e[type=armor_stand,tag=specialEntity,tag=scalesMain,limit=1,sort=nearest] run function hp:entities/scales/update
execute as @e[type=armor_stand,tag=specialEntity,tag=right] if predicate hp:player/holding_item at @s as @e[type=armor_stand,tag=specialEntity,tag=scalesMain,limit=1,sort=nearest] run function hp:entities/scales/update

scoreboard players enable @a[tag=duelling] duelLeave