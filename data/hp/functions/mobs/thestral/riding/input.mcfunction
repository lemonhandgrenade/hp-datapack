advancement revoke @s only hp:mobs/thestral/riding

scoreboard players operation #current thestralID = @e[type=armor_stand,tag=thestral,tag=thestralBase,distance=..2,sort=nearest,limit=1] thestralID

scoreboard players operation #current selectedSlot = @s selectedSlot
execute if score @s selectedSlot matches 0..4 run function hp:mobs/thestral/riding/distance_tree/04
execute if score @s selectedSlot matches 5..8 run function hp:mobs/thestral/riding/distance_tree/58
execute as @e[type=marker,tag=distanceCheck,tag=tmp,tag=tmp,sort=nearest] if score @s thestralID = #current thestralID run function hp:mobs/thestral/riding/get_pos

execute store result score playerPos X run data get entity @s Pos[0] 100
execute store result score playerPos Y run data get entity @s Pos[1] 100
execute store result score playerPos Z run data get entity @s Pos[2] 100

scoreboard players operation distancePos X -= playerPos X
scoreboard players operation distancePos Y -= playerPos Y
scoreboard players operation distancePos Z -= playerPos Z

execute rotated as @s as @e[type=armor_stand,tag=thestral,tag=thestralBase,limit=1,sort=nearest] if score @s thestralID = #current thestralID run function hp:mobs/thestral/riding/set_motion_rotation