execute as @e[tag=broom,limit=3,sort=nearest,distance=..2] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

execute store result score @s slo_id run data get entity @s Rotation[1] 100

scoreboard players set @s[scores={slo_id=4000..}] slo_id 4000
scoreboard players set @s[scores={slo_id=..-5000}] slo_id -5000

execute store result entity @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] float 0.01 run scoreboard players get @s slo_id

# data modify entity @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] set from entity @p[tag=flyingBroom] Rotation[1]