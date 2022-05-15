execute at @s[tag=headlock] as @e[tag=headlock,type=area_effect_cloud] if score @s UID = @p UID run tp @p @s

scoreboard players remove @s[scores={spellCooldown=1..}] spellCooldown 1
scoreboard players remove @s[scores={anim=1..}] anim 1

execute as @s[scores={anim=1..}] at @s run function hp:player/anim/select

execute as @s[tag=animagus,tag=morphed] run function hp:animagus/morph/tp
execute as @s[tag=morphed] run function hp:animagus/morph/effect

scoreboard players remove @s[scores={sneakTest=1..}] sneakTest 1
scoreboard players add @s[scores={sneak=1..}] sneakTest 1
scoreboard players set @s[scores={sneak=1..}] sneak 0

execute as @s[tag=flyingBroom] at @s run function hp:broom/input

effect clear @s[tag=!motionEffected,predicate=hp:is_being_launched] levitation
effect clear @s[tag=!motionEffected,predicate=hp:is_being_launched] unluck

execute as @s[predicate=hp:is_being_launched] run scoreboard players add @s yMotionTime 1
execute as @s[scores={yMotionTime=1..}] run effect clear @s levitation
execute as @s[scores={yMotionTime=1..}] run effect clear @s unluck
effect clear @s[tag=!motionEffected,predicate=hp:is_being_launched] levitation
effect clear @s[tag=!motionEffected,predicate=hp:is_being_launched] unluck
tag @s[scores={yMotionTime=1..}] remove motionEffected
scoreboard players set @s[predicate=!hp:is_being_launched] yMotionTime 0

execute as @s[tag=motionEffected] at @s run tp @s @e[tag=motionStop,sort=nearest,limit=1]