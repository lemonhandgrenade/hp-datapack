particle end_rod ~ ~ ~ 0 0 0 0.005 1
# particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 positioned ~ ~-1 ~ if entity @p[tag=spellCaster,distance=..1] run function hp:item_functions/deluminator/ray_back/private/end
execute facing entity @p[tag=spellCaster,sort=nearest,limit=1] eyes positioned ^ ^ ^10 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 run function hp:item_functions/deluminator/ray_back/raycast