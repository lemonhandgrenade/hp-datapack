execute as @e[tag=broom,limit=3,sort=nearest,distance=..2] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

#execute store result score @s slo_id run data get entity @s Rotation[1] 1
#scoreboard players set @s[scores={slo_id=40..}] slo_id 40
#scoreboard players set @s[scores={slo_id=..-50}] slo_id -50
#execute store result entity @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] float 1 run scoreboard players get @p slo_id

#data modify entity @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest] Pose.Head[0] set from entity @p Rotation[1]