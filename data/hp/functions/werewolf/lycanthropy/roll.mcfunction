advancement revoke @s only hp:lycanthropy

scoreboard players set @s lycanthropy 0

execute store result score #rng255 values run loot spawn 0 0 0 loot hp:rng/rng255
execute if score #rng255 values matches ..25 if entity @s[tag=!lycanthropySick] run function hp:werewolf/lycanthropy/sick
