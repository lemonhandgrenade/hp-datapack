schedule function hp:5tick 5t

execute as @e[type=marker,tag=lightBlock] at @s run function hp:spells/_blocks/delete_light
execute as @e[type=area_effect_cloud,tag=slowcast,tag=patronusCharm] at @s if block ~ ~ ~ air run function hp:spells/p/patronus_charm/light
execute at @a[tag=lumosMaxima] run function hp:spells/l/lumos_maxima/light
execute at @a[tag=wandLightingCharm] run function hp:spells/w/wand-lighting_charm/light

execute as @a[tag=flyingBroom] at @s run function hp:broom/player_rotation

kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b,tag:{KILL:1B}}}]
