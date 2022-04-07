scoreboard players operation temp values = @s UID
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add arrestTemp

effect give @a[tag=arrestTemp] blindness 2 1 true
effect give @a[tag=arrestTemp] slowness 1 1 true

execute as @a if score @s UID = temp values at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1 run particle dust 1 0 0 3 ~ ~ ~ 0 0 0 0 10
execute as @a if score @s UID = temp values at @s rotated as @s rotated ~ 0 positioned ^ ^ ^1 run tp @a[tag=arrestTemp] ~ ~ ~ ~ ~

tag @a[tag=arrestTemp] remove arrestTemp

execute if entity @s[type=area_effect_cloud] run function hp:spells/a/arrest_spell/private/end