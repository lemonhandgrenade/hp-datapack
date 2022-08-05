particle block gold_block ~ ~ ~ 0.1 0.1 0.1 0 10
particle item gold_block ~ ~ ~ 0.1 0.1 0.1 0 10
particle item gold_ingot ~ ~ ~ 0.1 0.1 0.1 0 10
particle item gold_nugget ~ ~ ~ 0.1 0.1 0.1 0 10


execute if entity @e[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/g/golden_flame/explode

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
#execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/g/golden_flame/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/g/golden_flame/explode
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/g/golden_flame/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/g/golden_flame/raycast