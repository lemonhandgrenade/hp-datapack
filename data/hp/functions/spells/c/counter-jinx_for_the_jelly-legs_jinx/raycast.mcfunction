particle dust_color_transition 0.2 0.5 0.7 1 0 0.4 1 ~ ~ ~ 0 0 0 0 1

execute if entity @e[tag=!this,dx=0,tag=jellyLegs] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/c/counter-jinx_for_the_jelly-legs_jinx/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/c/counter-jinx_for_the_jelly-legs_jinx/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/c/counter-jinx_for_the_jelly-legs_jinx/raycast

