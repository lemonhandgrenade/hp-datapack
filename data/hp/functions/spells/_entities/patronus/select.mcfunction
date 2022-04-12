execute if score #alternate values matches 1 if entity @s[tag=stag] run function hp:spells/_entities/patronus/stag
execute if score #alternate values matches 1 if entity @s[tag=owl] run function hp:spells/_entities/patronus/owl
execute if score #alternate values matches 1 if entity @s[tag=lion] run function hp:spells/_entities/patronus/lion
execute if score #alternate values matches 1 if entity @s[tag=wolf] run function hp:spells/_entities/patronus/wolf



execute as @e[type=area_effect_cloud,tag=patronusCharm,sort=nearest] at @s anchored eyes rotated as @s as @e[type=armor_stand,tag=patronusCharm,sort=nearest] if score @s UID = @e[type=area_effect_cloud,tag=patronusCharm,sort=nearest,limit=1] UID run tp @s ~ ~-0.75 ~ ~ ~
execute at @s as @a if score @s UID = @e[type=armor_stand,tag=patronusCharm,sort=nearest,limit=1] UID rotated as @s as @e[type=armor_stand,tag=patronusCharm,sort=nearest,limit=1] run tp @s ~ ~-0.75 ~ ~ ~