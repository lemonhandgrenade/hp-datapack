schedule function hp:2tick 2t
execute as @e[type=item,tag=!expelled,nbt={OnGround:0b,Item:{tag:{Wand:1b}}}] at @s if entity @p[x_rotation=..89] if entity @p[predicate=!hp:player/dead] run function hp:wand/change_spell

execute as @e[type=armor_stand,tag=potionCarrier] at @s as @a if score @s UID = @e[type=armor_stand,tag=potionCarrier,distance=..1,limit=1] UID run function hp:inv/give_potion_back


execute as @a[tag=lumosMaxima] at @s run function hp:spells/l/lumos_maxima/particle
execute as @a[tag=wandLightingCharm] at @s run function hp:spells/w/wand-lighting_charm/particle

scoreboard players operation #alternate2 values *= -1 values