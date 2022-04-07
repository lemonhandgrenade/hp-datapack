execute unless entity @p[x_rotation=90] if entity @s[type=item,nbt={OnGround:1b,Item:{tag:{bowlingBall:1b}}}] run function hp:entities/bowling_ball/summon_roll
execute if entity @p[x_rotation=90] if entity @s[type=item,nbt={OnGround:1b,Item:{tag:{bowlingBall:1b}}}] run function hp:entities/bowling_ball/summon

execute if entity @s[type=item,nbt={OnGround:1b,Item:{tag:{balloon:1b}}}] run function hp:entities/balloon/summon

execute if entity @s[tag=new,tag=cauldron,tag=summon] run function hp:entities/cauldron/summon
execute if entity @s[tag=new,tag=mortarpestle,tag=summon] run function hp:entities/mortarpestle/summon

execute if entity @s[tag=new,tag=scales] run function hp:entities/scales/pick_summon

execute if entity @s[tag=scales,tag=left] at @s if entity @e[type=item,sort=nearest,distance=..0.5] unless data entity @s HandItems[0].Count run function hp:entities/scales/set_item
execute if entity @s[tag=scales,tag=right] at @s if entity @e[type=item,sort=nearest,distance=..0.5] unless data entity @s HandItems[0].Count run function hp:entities/scales/set_item

execute if entity @s[tag=mortarpestleMain] at @s if entity @e[type=item,sort=nearest,distance=..0.2] as @e[type=item,sort=nearest,distance=..0.2] if data entity @s {Item:{Count:1b}} if data entity @s Item.tag.MortarPestle run function hp:entities/mortarpestle/change_item

execute if entity @s[tag=cauldronMain] run function hp:entities/cauldron/main

execute if entity @s[type=armor_stand,tag=scales,tag=scalesMain] unless predicate hp:player/is_wearing_armor run function hp:entities/scales/kill
kill @s[type=armor_stand,tag=cauldron,predicate=hp:player/no_helmet]
kill @s[type=armor_stand,tag=mortarpestleMain,predicate=!hp:player/is_wearing_armor]
kill @s[type=armor_stand,tag=bowlingBall,predicate=!hp:player/is_wearing_armor]
kill @s[type=armor_stand,tag=balloon,predicate=!hp:player/is_wearing_armor]



execute if entity @s[type=item,tag=wingardium] if score #alternate values matches -1 run data modify entity @s Air set value 0s
execute if entity @s[type=item,tag=wingardium] if score #alternate values matches 1 run data modify entity @s Air set value 1s




scoreboard players operation #current UID = @s UID
execute if entity @s[tag=wingardium] run scoreboard players set temp values 14
execute if entity @s[tag=wingardium] if score temp values matches 0.. as @a if score @s UID = #current UID anchored eyes at @s positioned ^ ^ ^.1 rotated as @s as @e[type=#hp:levitation,tag=wingardium] if score @s UID = #current UID run function hp:entities/wingardium/raycast
execute if entity @s[tag=wingardium] if score temp values matches 0 as @a if score @s UID = #current UID anchored eyes at @s positioned ^ ^ ^.1 rotated as @s as @e[type=#hp:levitation,tag=wingardium] if score @s UID = #current UID run tp @s ^ ^ ^6


