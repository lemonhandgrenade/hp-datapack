execute store result score #temp spellCount run loot spawn 0 0 0 loot hp:rng/rng3
execute if score #temp spellCount matches 1 rotated ~14 ~-8 run tp @s ~ ~ ~ ~ ~
execute if score #temp spellCount matches 2 rotated ~-17 ~-9 run tp @s ~ ~ ~ ~ ~
execute if score #temp spellCount matches 3 rotated ~ ~12 run tp @s ~ ~ ~ ~ ~