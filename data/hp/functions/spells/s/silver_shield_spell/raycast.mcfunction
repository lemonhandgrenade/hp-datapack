#particle dust 1 0 0 0.5 ~ ~ ~ 0 0 0 0 10
function hp:spells/s/silver_shield_spell/particle
execute if entity @e[tag=!this,distance=..1.3] run function hp:spells/s/silver_shield_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/s/silver_shield_spell/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_shield_spell/raycast