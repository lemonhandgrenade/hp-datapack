#particle dust_color_transition 0.6 0.6 0.8 1 0.3 0.4 1 ~ ~ ~ 0 0 0 0 1
particle crit ~ ~ ~ 0 0 0 0 10

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.25 if block ~ ~ ~ #minecraft:doors run function hp:spells/d/door-opening_spell/hit_block
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #hp:air run function hp:spells/d/door-opening_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.25 if block ~ ~ ~ #hp:air run function hp:spells/d/door-opening_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.25 if block ~ ~ ~ #hp:air run function hp:spells/d/door-opening_spell/raycast