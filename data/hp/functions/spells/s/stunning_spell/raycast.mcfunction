particle minecraft:dust_color_transition 1 1 1 1 1 0 0 ~ ~ ~ 0 0 0 0 1

execute if entity @a[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @a[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/stunning_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 unless block ~ ~ ~ #hp:air run function hp:spells/s/stunning_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/stunning_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/stunning_spell/raycast