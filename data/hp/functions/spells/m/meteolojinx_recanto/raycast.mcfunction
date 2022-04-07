particle minecraft:dust 1 1 0 1 ~ ~ ~ 0 0 0 0 10
execute if entity @e[type=armor_stand,tag=weather,tag=!this,distance=..2] run function hp:spells/m/meteolojinx_recanto/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/m/meteolojinx_recanto/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/m/meteolojinx_recanto/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/m/meteolojinx_recanto/raycast