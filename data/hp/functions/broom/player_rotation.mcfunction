execute store result score @s slo_id run data get entity @s Rotation[1] 1

execute as @e[tag=broom,limit=3,sort=nearest] run data modify entity @s Rotation set from entity @p Rotation
scoreboard players set @s[scores={slo_id=45..}] slo_id 45
scoreboard players set @s[scores={slo_id=..-45}] slo_id -45
execute store result entity @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] float 1 run scoreboard players get @s slo_id