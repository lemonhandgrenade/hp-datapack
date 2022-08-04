scoreboard players operation #current UID = @s UID

execute at @s rotated as @s as @e[tag=animagusCreature,sort=nearest] if score @s UID = #current UID run tp @s ~ ~ ~ ~ ~-15

execute if score resourcepackMobs settings matches 1 if score #alternate values matches 1 run function hp:animagus/animation