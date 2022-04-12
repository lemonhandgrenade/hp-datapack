#particle mycelium ~ ~ ~ 0 0 0 0 10
execute if entity @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/f/flagrante_curse/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/f/flagrante_curse/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/f/flagrante_curse/raycast

