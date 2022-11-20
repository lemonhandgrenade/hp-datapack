scoreboard players add @s apparitionTimer 1

execute if score @s apparitionTimer matches 1 run effect give @s minecraft:levitation 3 127 true
execute if score @s apparitionTimer matches 1 run effect give @s minecraft:invisibility 3 200 true

execute if score @s apparitionTimer matches 1..40 at @s positioned ~ ~1 ~ run particle dust_color_transition 0.075 0.02 0.1 3 0.1 0.04 0.24 ~ ~ ~ 0.25 1.75 0.25 0 100 normal


execute if score @s apparitionTimer matches 40 run function hp:spells/a/apparition/marker/end_teleport