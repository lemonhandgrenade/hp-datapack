scoreboard players operation @s anim = @s sloDst
scoreboard players operation @s anim %= 10 values
particle mycelium ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 0 if score @s anim matches 0 run particle dust_color_transition 1 0 0 1 1 1 0 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 0 if score @s anim matches 2 run particle dust_color_transition 1 1 0 1 0 1 0 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 0 if score @s anim matches 4 run particle dust_color_transition 0 1 0 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 0 if score @s anim matches 6 run particle dust_color_transition 0 1 1 1 0 0 1 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 0 if score @s anim matches 8 run particle dust_color_transition 0 0 1 1 1 0 1 ~ ~ ~ 0 0 0 0 1

execute if score @s colourChangingCharm matches 1 run particle dust_color_transition 0.8 0 0 1 0.66 0 0 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 2 run particle dust_color_transition 0 0.66 0 1 0 0.33 0 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 3 run particle dust_color_transition 0 0 0.66 1 0 0 0.33 ~ ~ ~ 0 0 0 0 1
execute if score @s colourChangingCharm matches 4 run particle dust_color_transition 0.98 0.66 0 1 0.66 0.5 0 ~ ~ ~ 0 0 0 0 1