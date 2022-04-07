
execute if entity @e[tag=!this,distance=..1.5,tag=slowcast] run function hp:spells/d/defensive_charm/hit_entity


scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.3 unless block ~ ~ ~ #hp:air run function hp:spells/d/defensive_charm/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0 if block ~ ~ ~ #hp:air run function hp:spells/d/defensive_charm/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0 if block ~ ~ ~ #hp:air run function hp:spells/d/defensive_charm/raycast