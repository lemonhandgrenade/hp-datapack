tag @s add end
execute as @a[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 as @a[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add flipendoTarget

execute rotated as @p[tag=this] run summon minecraft:armor_stand ^ ^ ^1 {Tags:["new"],Invisible:1b,Marker:1b,NoGravity:1b}

execute as @e[tag=new] store result score temp motionX run data get entity @s Pos[0] -200
execute as @e[tag=new] store result score temp motionY run data get entity @s Pos[1] -200
execute as @e[tag=new] store result score temp motionZ run data get entity @s Pos[2] -200

execute as @e[tag=new] at @s rotated as @p[tag=this] run tp @s ^ ^ ^0.1

execute as @e[tag=new] store result score temp2 motionX run data get entity @s Pos[0] -200
execute as @e[tag=new] store result score temp2 motionY run data get entity @s Pos[1] -200
execute as @e[tag=new] store result score temp2 motionZ run data get entity @s Pos[2] -200

execute as @e[tag=new] run scoreboard players operation temp motionX -= temp2 motionX
execute as @e[tag=new] run scoreboard players operation temp motionY -= temp2 motionY
execute as @e[tag=new] run scoreboard players operation temp motionZ -= temp2 motionZ

kill @e[tag=new]

scoreboard players operation @p[tag=flipendoTarget] motionX = temp motionX
scoreboard players operation @p[tag=flipendoTarget] motionY = temp motionY
scoreboard players operation @p[tag=flipendoTarget] motionZ = temp motionZ

execute as @p[tag=flipendoTarget] at @s run function hp:player/motion/launch

tag @p[tag=flipendoTarget] remove flipendoTarget

execute if entity @s[type=area_effect_cloud] run function hp:spells/k/knockback_jinx/private/end