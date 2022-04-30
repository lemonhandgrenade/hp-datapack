#execute if score @s selectedSlot matches 2 run summon minecraft:marker ^ ^ ^1.6 {NoGravity:1b,Tags:[distanceCheck,tmp]}
#execute if score @s selectedSlot matches 3 run summon minecraft:marker ^ ^ ^2.4 {NoGravity:1b,Tags:[distanceCheck,tmp]}

execute if score @s selectedSlot matches 2 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^1.6
execute if score @s selectedSlot matches 3 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^2.4