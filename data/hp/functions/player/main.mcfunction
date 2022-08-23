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


execute as @s[predicate=hp:is_being_launched] run scoreboard players add @s yMotionTime 1
tag @s[scores={yMotionTime=1..}] remove motionEffected
scoreboard players set @s[predicate=!hp:is_being_launched] yMotionTime 0

execute as @s[tag=motionEffected] at @s run tp @s @e[type=armor_stand,tag=motionStop,sort=nearest,limit=1]

execute if score @s wfoas matches 1.. run function hp:equipment/wfoas

execute if entity @s[tag=handOfGlory,predicate=!hp:holding_hand_of_glory] run tag @s remove handOfGlory

execute if entity @s[gamemode=!spectator,tag=werewolf,tag=!wereTransform] if score moonTime moon matches 13000.. if score moonTime moon matches ..22499 if score moonPhase moon matches 0 run function hp:werewolf/transform
execute if entity @s[tag=werewolf,tag=wereTransform] if score moonTime moon matches 22500.. if score moonTime moon matches ..23999 run function hp:werewolf/untransform
execute if entity @s[tag=werewolf,tag=wereTransform] if score moonTime moon matches 0.. if score moonTime moon matches ..12999 run function hp:werewolf/untransform
execute if entity @s[tag=werewolf,tag=wereTransform] unless score moonPhase moon matches 0 run function hp:werewolf/untransform