execute store result score rng3 values run loot spawn 0 0 0 loot hp:rng/rng3
execute if score rng3 values matches 2 run loot give @s loot hp:hair
tellraw @s[tag=debug] {"score":{"name":"rng3","objective":"values"},"color":"#4B0082"}
advancement revoke @s only hp:hair