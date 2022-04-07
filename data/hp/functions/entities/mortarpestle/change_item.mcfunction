execute store result score rng5 values run loot spawn 0 0 0 loot hp:rng/rng5
execute store result score rng3 values run loot spawn 0 0 0 loot hp:rng/rng3

execute store result score temp values run data get entity @s Item.tag.CustomModelData
execute store result score count values run data get entity @s Item.Count
data modify storage hp:temp uuid set from entity @s UUID

execute as @a run function hp:entities/mortarpestle/get_thrower

execute at @s if score temp values matches 280 as @a[tag=mpTarget] run function hp:items/ingredients/bezoar_crushed
execute at @s if score temp values matches 280 as @a[tag=mpTarget] run function hp:items/ingredients/bezoar_crushed
execute at @s if score temp values matches 281 as @a[tag=mpTarget] run function hp:items/ingredients/bezoar_powdered
execute at @s if score temp values matches 281 as @a[tag=mpTarget] run function hp:items/ingredients/bezoar_powdered


execute at @s if score temp values matches 2310 as @a[tag=mpTarget] run function hp:items/ingredients/snake_fang_crushed
execute at @s if score rng3 values matches ..2 if score temp values matches 2311 as @a[tag=mpTarget] run function hp:items/ingredients/snake_fang_powdered

execute at @s if score temp values matches 2430 as @a[tag=mpTarget] run function hp:items/ingredients/standard_ingredient_crushed
execute at @s if score temp values matches 2430 as @a[tag=mpTarget] run function hp:items/ingredients/standard_ingredient_crushed

execute at @s if score temp values matches 2620 as @a[tag=mpTarget] run function hp:items/ingredients/unicorn_horn_crushed
execute at @s if score temp values matches 2620 as @a[tag=mpTarget] run function hp:items/ingredients/unicorn_horn_crushed
execute at @s if score temp values matches 2621 as @a[tag=mpTarget] run function hp:items/ingredients/unicorn_horn_powdered
execute at @s if score temp values matches 2621 as @a[tag=mpTarget] run function hp:items/ingredients/unicorn_horn_powdered

playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 100 1.2

tag @a remove mpTarget
kill @s