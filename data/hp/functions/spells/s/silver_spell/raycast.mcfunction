particle dust_color_transition .75 .76 .8 1 .66 .66 .67 ~ ~ ~ 0.1 0.1 0.1 0 2
particle block iron_block ~ ~ ~ 0.1 0.1 0.1 0.1 1
particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 1

execute if score #temp slowcast matches 0.. if score charmsBreakBlocks settings matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:glass run function hp:spells/s/silver_spell/shatter
execute if entity @e[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/s/silver_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/s/silver_spell/explode
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_spell/raycast