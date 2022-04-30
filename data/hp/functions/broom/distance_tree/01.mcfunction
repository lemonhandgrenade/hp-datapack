#execute if score @s selectedSlot matches 0 run summon minecraft:marker ^ ^ ^0.0 {NoGravity:1b,Tags:[distanceCheck,tmp]}
#execute if score @s selectedSlot matches 1 run summon minecraft:marker ^ ^ ^0.8 {NoGravity:1b,Tags:[distanceCheck,tmp]}

execute if score @s selectedSlot matches 0 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^0.0
execute if score @s selectedSlot matches 1 as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^0.8