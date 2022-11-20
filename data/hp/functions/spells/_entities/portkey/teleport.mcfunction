#summon armor_stand ~ ~ ~ {Tags:["teleport","new"]}

#data modify entity @e[type=minecraft:armor_stand,tag=new,tag=teleport,limit=1] Pos set from entity @s Item.tag.PortkeyPos
execute store result score #x values run data get entity @s Item.tag.PortkeyPos[0]
execute store result score #y values run data get entity @s Item.tag.PortkeyPos[1]
execute store result score #z values run data get entity @s Item.tag.PortkeyPos[2]

execute as @p[distance=..1.75] at @s run function hp:player/tp/start_tp
kill @s

#execute as @p[distance=..2] at @s as @a[distance=..2] run tp @s @e[type=minecraft:armor_stand,tag=new,tag=teleport,limit=1]
#kill @e[type=minecraft:armor_stand,tag=new,tag=teleport,limit=1]65