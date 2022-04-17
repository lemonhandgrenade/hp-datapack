particle minecraft:dust_color_transition 1 1 1 0.5 0.2 0.5 0.8 ~ ~ ~ 0.05 0.05 0.05 0 10
particle wax_off ~ ~ ~ 0.01 0.01 0.01 0 5
particle dust 0.6 0.75 0.95 0.5 ~ ~ ~ 0 0 0 0 5

#execute if entity @e[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/p/patronus_charm/hit_entity



scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.25 unless block ~ ~ ~ #hp:air run function hp:spells/p/patronus_charm/private/end
#execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.25 if block ~ ~ ~ #hp:air run function hp:spells/p/patronus_charm/raycast
#execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.25 if block ~ ~ ~ #hp:air run function hp:spells/p/patronus_charm/raycast

execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.25 run function hp:spells/p/patronus_charm/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^-0.25 run function hp:spells/p/patronus_charm/raycast