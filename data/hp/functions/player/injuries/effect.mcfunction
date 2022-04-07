effect give @s[tag=deepCut] minecraft:blindness 2 255 true
effect give @s[tag=deepCut] minecraft:slowness 2 255 true
effect give @s[tag=deepCut] minecraft:jump_boost 2 128 true

effect give @s[tag=petrified] minecraft:blindness 2 255 true
effect give @s[tag=petrified] minecraft:slowness 2 255 true
effect give @s[tag=petrified] minecraft:jump_boost 2 128 true

effect give @s[tag=sleeping] minecraft:blindness 2 255 true
effect give @s[tag=sleeping] minecraft:slowness 2 255 true
effect give @s[tag=sleeping] minecraft:jump_boost 2 128 true

effect give @s[tag=blinded] minecraft:blindness 2 255 true
effect give @s[tag=legLocked] minecraft:slowness 2 255 true

effect give @s[tag=crucio] minecraft:instant_damage 1 30 true
effect give @s[tag=crucio] minecraft:slowness 2 30 true
effect give @s[tag=crucio] minecraft:jump_boost 2 128 true
#effect give @s[tag=choking] minecraft:instant_damage 1 30 true
effect give @s[tag=brokenLeg] minecraft:slowness 1 3 true
effect give @s[tag=brokenLeg] minecraft:jump_boost 1 128 true
effect give @s[tag=bound] minecraft:weakness 1 255 true
effect give @s[tag=bound] minecraft:slowness 1 2 true
effect give @s[tag=bound] minecraft:jump_boost 1 128 true

execute at @s[tag=legLocked] run particle dust 0.5 0 0.4 1 ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=petrified] run particle block stone ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=bound] run particle crit ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=boundLight] run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0 10