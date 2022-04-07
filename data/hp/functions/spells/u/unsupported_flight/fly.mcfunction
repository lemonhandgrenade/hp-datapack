effect give @s invisibility 1 1 true
effect give @s slow_falling 5 5 true
effect give @s levitation 1 255 true

particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.1 0.1 0.1 0 24 normal 
execute positioned ^ ^ ^0.4 if blocks ~ ~ ~ ~ ~1 ~ 0 255 0 masked run tp @s ^ ^ ^0.2