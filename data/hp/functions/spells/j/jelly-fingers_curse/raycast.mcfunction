particle dust_color_transition 0.3 0.8 0.2 1 0 1 0 ~ ~ ~ 0 0 0 0 1

execute if entity @e[type=#hp:can_hold,tag=!this,dx=0,predicate=hp:player/holding_item] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/j/jelly-fingers_curse/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/j/jelly-fingers_curse/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/j/jelly-fingers_curse/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/j/jelly-fingers_curse/raycast

