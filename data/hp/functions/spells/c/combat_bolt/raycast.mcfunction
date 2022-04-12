particle dolphin ~ ~ ~ 0 0 0 0 1

execute if entity @e[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/c/combat_bolt/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.3 unless block ~ ~ ~ #hp:air run function hp:spells/c/combat_bolt/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.3 if block ~ ~ ~ #hp:air run function hp:spells/c/combat_bolt/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.3 if block ~ ~ ~ #hp:air run function hp:spells/c/combat_bolt/raycast