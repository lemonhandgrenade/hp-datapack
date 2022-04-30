execute if score @s selectedSlot matches 2..3 run function hp:broom/distance_tree/23
#execute if score @s selectedSlot matches 4 run summon minecraft:marker ^ ^ ^3.2 {NoGravity:1b,Tags:[distanceCheck,tmp]}

execute if score @s selectedSlot matches 4 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^3.2