execute unless predicate hp:no_broom run function hp:broom/input/print

execute on vehicle run scoreboard players operation #current broomID = @s broomID

execute as @e[type=marker,tag=distanceCheck,tag=tmp] if score @s broomID = #current broomID run tp @s ^ ^ ^10
execute as @e[type=marker,tag=distanceCheck,tag=tmp,tag=tmp,sort=nearest] if score @s broomID = #current broomID run function hp:broom/get_pos

execute store result score playerPos X run data get entity @s Pos[0] 100
execute store result score playerPos Y run data get entity @s Pos[1] 100
execute store result score playerPos Z run data get entity @s Pos[2] 100

scoreboard players operation distancePos X -= playerPos X
scoreboard players operation distancePos Y -= playerPos Y
scoreboard players operation distancePos Z -= playerPos Z

effect give @s minecraft:jump_boost 1 255 true