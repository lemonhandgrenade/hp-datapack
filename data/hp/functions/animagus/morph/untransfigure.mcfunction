tellraw @s "Untransfigure"


effect give @s minecraft:blindness 3 255 true
particle minecraft:dust_color_transition 0.6 0.6 0.6 3 0.3 0.3 0.3 ~ ~1 ~ 0.25 0.5 0.25 0 200

scoreboard players operation #current UID = @s UID
execute at @s rotated as @s as @e[tag=animagusCreature] if score @s UID = #current UID run tp @s ~ -128 ~
execute at @s rotated as @s as @e[tag=animagusCreature] if score @s UID = #current UID run kill @s

effect clear @s levitation

tag @s remove morphed