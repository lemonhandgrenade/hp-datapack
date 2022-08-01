scoreboard players operation #current UID = @s UID

execute at @s rotated as @s as @e[tag=animagusCreature,sort=nearest] if score @s UID = #current UID run tp @s ~ ~ ~ ~ ~-15

execute if score @s animagusID matches 3..10 run function hp:animagus/animation