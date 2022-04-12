execute store result score temp values run loot spawn 0 0 0 loot hp:rng/rng3
execute if score temp values matches 1 rotated ~14 ~-8 run tp @s ~ ~ ~ ~ ~
execute if score temp values matches 2 rotated ~-17 ~-9 run tp @s ~ ~ ~ ~ ~
execute if score temp values matches 3 rotated ~ ~12 run tp @s ~ ~ ~ ~ ~
#execute if score temp values matches 3 facing entity @e[type=#hp:alive,tag=!this,sort=nearest,limit=1,distance=..30] eyes positioned ^ ^ ^100 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~