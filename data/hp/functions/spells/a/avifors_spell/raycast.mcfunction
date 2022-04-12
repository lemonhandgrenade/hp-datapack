particle mycelium ~ ~ ~ 0 0 0 0 10
execute if entity @e[type=item,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/a/avifors_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 unless block ~ ~ ~ #hp:air run function hp:spells/a/avifors_spell/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hp:air run function hp:spells/a/avifors_spell/raycast

