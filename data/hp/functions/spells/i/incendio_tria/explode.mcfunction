particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0 100
execute if entity @s[tag=!flameFrozen] as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 at @s run summon small_fireball ~ ~0.1 ~-0.7 {life:20,power:[0.0,0.0,0.9],Tags:["castFireball"]}
execute if entity @s[type=area_effect_cloud] run function hp:spells/i/incendio_tria/private/end