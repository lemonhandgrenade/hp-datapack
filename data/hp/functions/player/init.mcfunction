scoreboard players add _uid_ptr UID 1
scoreboard players operation @s UID = _uid_ptr UID

tag @s add init

execute store result score #rng_animagus values run loot spawn 0 0 0 loot hp:rng/rng_animagus
scoreboard players operation @s fearID = #rng_fear values