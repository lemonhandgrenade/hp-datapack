scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~

execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:repairable run function hp:spells/m/mending_charm/hit_block
execute if score #temp slowcast matches 0.. if entity @s[tag=!done] if entity @e[type=area_effect_cloud,tag=mendingCharm,tag=!this,distance=..0.8,limit=1] run function hp:spells/m/mending_charm/hit_entity
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/m/mending_charm/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/m/mending_charm/raycast

