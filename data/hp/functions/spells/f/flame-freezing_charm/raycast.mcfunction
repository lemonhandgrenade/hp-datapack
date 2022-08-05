particle dust_color_transition 1 1 1 1 0 1 1 ~ ~ ~ 0 0 0 0 1

execute if entity @e[type=area_effect_cloud,tag=!this,distance=..1.3] positioned ~-0.01 ~-0.01 ~-0.01 if entity @e[tag=!this,distance=..1.3] positioned ~0.01 ~0.01 ~0.01 run function hp:spells/f/flame-freezing_charm/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/f/flame-freezing_charm/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/f/flame-freezing_charm/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/f/flame-freezing_charm/raycast