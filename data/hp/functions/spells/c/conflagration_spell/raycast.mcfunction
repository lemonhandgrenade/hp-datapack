execute if entity @e[type=item,tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/c/conflagration_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/c/conflagration_spell/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/c/conflagration_spell/raycast

