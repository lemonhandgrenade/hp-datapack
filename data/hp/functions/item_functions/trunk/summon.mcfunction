tag @s add trunkItem
summon armor_stand ~ ~ ~ {Tags:["new","trunk","specialEntity"],DisabledSlots:47,Small:1b,Invulnerable:1b,Invisible:1b}
data modify entity @e[type=minecraft:armor_stand,tag=new,tag=trunk,limit=1] ArmorItems[3] set from entity @s Item
execute as @e[type=minecraft:armor_stand,tag=new,tag=trunk,limit=1] at @s run tp @s ~ ~ ~ facing entity @p
tag @e[type=minecraft:armor_stand,tag=new,tag=trunk] remove new
kill @s