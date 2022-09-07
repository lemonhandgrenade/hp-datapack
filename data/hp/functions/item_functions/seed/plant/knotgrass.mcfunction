scoreboard players set temp values 0
execute unless block ~ ~-1 ~ grass_block run scoreboard players set temp values 1
execute unless block ~ ~ ~ air run scoreboard players set temp values 1
execute if block ~ ~-1 ~ grass_block if block ~ ~ ~ air run function hp:item_functions/seed/place/knotgrass
execute if score temp values matches 1 as @p[advancements={hp:seed=true},gamemode=!creative] run function hp:items/seeds/knotgrass