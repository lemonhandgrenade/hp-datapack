execute store result score temp motionX run data get entity @s Pos[0] -20
execute store result score temp motionY run data get entity @s Pos[1] -100
execute store result score temp motionZ run data get entity @s Pos[2] -20

execute rotated as @p run tp @s ^ ^ ^0.57

execute store result score temp2 motionX run data get entity @s Pos[0] -20
execute store result score temp2 motionY run data get entity @s Pos[1] -100
execute store result score temp2 motionZ run data get entity @s Pos[2] -20

scoreboard players operation temp motionX -= temp2 motionX
scoreboard players operation temp motionY -= temp2 motionY
scoreboard players operation temp motionZ -= temp2 motionZ