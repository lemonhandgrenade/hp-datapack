particle dust_color_transition 1 0.8 0.8 1 1 0 0 ~ ~ ~ 0.05 0.05 0.05 0 3 force @a

execute if entity @a[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @a[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/p/periculum/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ~ ~0.2 ~ unless block ~ ~ ~ #hp:air run function hp:spells/p/periculum/private/end
execute if score #temp slowcast matches 0.. positioned ~ ~0.2 ~ if block ~ ~ ~ #hp:air run function hp:spells/p/periculum/raycast