scoreboard players operation #current broomID = @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest] broomID

execute if score @s selectedSlot matches 0..4 run function hp:broom/distance_tree/04
execute if score @s selectedSlot matches 5..8 run function hp:broom/distance_tree/58
execute as @e[type=marker,tag=distanceCheck,tag=tmp,limit=1,sort=nearest] run function hp:broom/get_pos

execute store result score playerPos Y run data get entity @s Pos[1] 100
execute store result score playerPos Z run data get entity @s Pos[2] 100
execute store result score playerPos X run data get entity @s Pos[0] 100

scoreboard players operation distancePos X -= playerPos X
scoreboard players operation distancePos Y -= playerPos Y
scoreboard players operation distancePos Z -= playerPos Z

execute as @e[type=armor_stand,tag=broom,tag=broomElytra,limit=1,sort=nearest] run function hp:broom/set_motion