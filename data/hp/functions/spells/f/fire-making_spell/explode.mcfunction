particle flame ~ ~ ~ 0.2 0.2 0.2 0 10
scoreboard players set temp values 0
execute as @e[dx=0,tag=!this,tag=plant,tag=spikyBush] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run scoreboard players set temp values 1
execute as @e[dx=0,tag=!this,tag=plant,tag=spikyBush] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] at @s run function hp:plants/kill
execute if score temp values matches 0 if entity @s[tag=!flameFrozen] as @e[dx=0,tag=!this,tag=!spikyBush] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,tag=!spikyBush] at @s run summon small_fireball ~ ~3 ~ {life:20,power:[0.0,-1.0,0.0],Tags:["castFireball"]}
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/fire-making_spell/private/end