#particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 10
execute if entity @e[tag=!this,distance=..1.3] run function hp:spells/s/shield_charm/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.025 unless block ~ ~ ~ #hp:air run function hp:spells/s/shield_charm/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.025 if block ~ ~ ~ #hp:air run function hp:spells/s/shield_charm/raycast

