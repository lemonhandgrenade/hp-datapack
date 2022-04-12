execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:player/unlock
execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s anim 2
execute as @e[dx=0,tag=!this,tag=levicorpus] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove levicorpus
execute if entity @s[type=area_effect_cloud] run function hp:spells/l/liberacorpus/private/end