particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.125 0.25 0.125 1 10 normal @s
tag @s add isApparating
execute store result score #rng_splinch values run loot spawn 0 0 0 loot hp:rng/rng_splinch
tellraw @a[tag=debug] {"score":{"name":"#rng_splinch","objective":"values"}}
execute if score #rng_splinch values matches 1 if predicate hp:player/is_sprinting run tag @s add splinchSevere
execute if score #rng_splinch values matches ..5 if predicate hp:player/is_sprinting run tag @s add splinchMedium
execute if score #rng_splinch values matches ..10 if predicate hp:player/is_sprinting run tag @s add splinchSmall
function hp:spells/a/apparition/summon_snowball
gamemode spectator
# 
effect give @s minecraft:blindness 1 100 true
effect give @s minecraft:darkness 1 100 true
particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.125 0.25 0.125 1 10 normal @s