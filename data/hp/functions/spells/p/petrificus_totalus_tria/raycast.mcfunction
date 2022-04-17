#particle dust_color_transition 1 1 1 1 0 1 1 ~ ~ ~ 0 0 0 0 1
particle block bubble_coral_block ~ ~ ~ 0 0 0 0 1
particle block amethyst_block ~ ~ ~ 0 0 0 0 1
particle block purple_concrete ~ ~ ~ 0 0 0 0 1

execute if entity @e[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/p/petrificus_totalus_tria/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/p/petrificus_totalus_tria/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/p/petrificus_totalus_tria/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/p/petrificus_totalus_tria/raycast

