effect give @s invisibility 1 1 true
effect give @s slow_falling 5 5 true
execute if entity @s[x_rotation=-44..44] run effect give @s levitation 1 255 true
execute if entity @s[x_rotation=45..90] unless score @s sneak matches 1.. run effect clear @s levitation
execute if entity @s[x_rotation=-90..-45] unless score @s sneak matches 1.. run effect give @s levitation 1 2 true
effect give @s slowness 1 1 true

particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.1 0.1 0.1 0 24 normal 