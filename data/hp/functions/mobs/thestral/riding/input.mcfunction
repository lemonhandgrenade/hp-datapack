function hp:motion/print

execute on vehicle run scoreboard players operation #current thestralID = @s thestralID

execute as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s thestralID = #current thestralID run tp @s ^ ^ ^10
execute as @e[type=marker,tag=distanceCheck,tag=tmp,tag=tmp,sort=nearest] if score @s thestralID = #current thestralID run function hp:motion/get_pos

execute store result score playerPos X run data get entity @s Pos[0] 100
execute store result score playerPos Y run data get entity @s Pos[1] 100
execute store result score playerPos Z run data get entity @s Pos[2] 100

scoreboard players operation distancePos X -= playerPos X
scoreboard players operation distancePos Y -= playerPos Y
scoreboard players operation distancePos Z -= playerPos Z

effect give @s minecraft:jump_boost 1 255 true

execute on vehicle on vehicle run function hp:mobs/thestral/riding/set_motion