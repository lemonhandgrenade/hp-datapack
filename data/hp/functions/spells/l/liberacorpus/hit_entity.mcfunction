execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:player/unlock
execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run scoreboard players set @s anim 2
execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s remove levicorpus
execute if entity @s[type=area_effect_cloud] run function hp:spells/l/liberacorpus/private/end