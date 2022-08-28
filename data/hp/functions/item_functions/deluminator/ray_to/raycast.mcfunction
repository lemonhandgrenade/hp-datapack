# particle mycelium ~ ~ ~ 0 0 0 0 0
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air if block ~ ~ ~ #hp:deluminator[lit=true] run function hp:item_functions/deluminator/ray_to/hit_block
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:item_functions/deluminator/ray_to/private/end

execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:item_functions/deluminator/ray_to/raycast