effect give @s invisibility 1 1 true
effect give @s slow_falling 5 5 true
execute if entity @s[x_rotation=-44..44] run effect give @s levitation 1 255 true
execute if entity @s[x_rotation=45..90] unless score @s sneak matches 1.. run effect clear @s levitation
execute if entity @s[x_rotation=-90..-45] unless score @s sneak matches 1.. run effect give @s levitation 1 2 true
effect give @s slowness 1 1 true

particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.1 0.1 0.1 0 24 normal 
#execute positioned ^ ^ ^0.02 if blocks ~ ~ ~ ~ ~1 ~ 0 255 0 masked run tp @s ^ ^ ^-0.01
execute if score @s sneakTest matches 1 rotated as @s run summon slime ^ ^ ^-0.4 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}