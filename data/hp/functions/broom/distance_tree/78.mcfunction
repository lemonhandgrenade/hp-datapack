#execute if score @s selectedSlot matches 7 run summon minecraft:marker ^ ^ ^5.6 {NoGravity:1b,Tags:[distanceCheck,tmp]}
#execute if score @s selectedSlot matches 8 run summon minecraft:marker ^ ^ ^6.4 {NoGravity:1b,Tags:[distanceCheck,tmp]}

execute if score @s selectedSlot matches 7 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^5.6
execute if score @s selectedSlot matches 8 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^6.4