particle soul_fire_flame ~ ~ ~ 0 0 0 0 1
particle dust .64 0.64 0.82 2 ~ ~ ~ 0 0 0 0 1

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~

execute if score @s values matches 0 if score @s sloDst matches ..31 run tag @s add reflected

function hp:spells/b/bluebell_flames/light
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/b/bluebell_flames/private/end
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 unless block ~ ~ ~ #hp:air run function hp:spells/b/bluebell_flames/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/b/bluebell_flames/raycast
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ water run function hp:spells/b/bluebell_flames/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/b/bluebell_flames/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ water run function hp:spells/b/bluebell_flames/raycast