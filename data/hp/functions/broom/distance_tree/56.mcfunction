#execute if score @s selectedSlot matches 5 run summon minecraft:marker ^ ^ ^4 {NoGravity:1b,Tags:[distanceCheck,tmp]}
#execute if score @s selectedSlot matches 6 run summon minecraft:marker ^ ^ ^4.8 {NoGravity:1b,Tags:[distanceCheck,tmp]}

execute if score @s selectedSlot matches 5 as @e[tag=distanceCheck] if score @s broomID = #current broomID run tp @s ^ ^ ^4
execute if score @s selectedSlot matches 6 as @e[tag=distanceCheck] if score @s broomID = #current broomID run tp @s ^ ^ ^4.8