scoreboard players set temp values 0
execute unless block ~ ~-1 ~ coarse_dirt run scoreboard players set temp values 1
execute unless block ~ ~ ~ air run scoreboard players set temp values 1
execute if block ~ ~-1 ~ coarse_dirt if block ~ ~ ~ air run function hp:item_functions/seed/place/fluxweed
execute if score temp values matches 1 as @p[advancements={hp:seed=true},gamemode=!creative] run function hp:items/seeds/fluxweed