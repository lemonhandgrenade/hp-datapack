particle minecraft:dust_color_transition 1 1 1 0.5 0.2 0.5 0.8 ~ ~ ~ 0.05 0.05 0.05 0 10
particle wax_off ~ ~ ~ 0.01 0.01 0.01 1 5
# particle dust_color_transition 0.6 0.75 0.95 1 1 1 1 ~ ~ ~ 0.25 0.25 0.25 0 5
particle dust_color_transition 0.57 0.61 0.7 1 0.6 0.75 0.95 ~ ~ ~ 0.25 0.25 0.25 0 5

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.4317 unless block ~ ~ ~ #hp:air run function hp:spells/p/patronus_charm/private/end

## Reasoning
# A tick happens every 20th of a second so base speeds shall be divided by 20
# Base sprint speed is 5.612 m/s -> 5.612 / 20 = 0.2806
# Base walk speed is 4.317 m/s -> 4.317 / 20 = 0.21585
# Base sneak speed is 1.31 m/s -> 1.31 / 20 = 0.0655
# Sprint sneak speed is 1.8 m/s -> 1.8 / 20 =  0.09
# Sneak will be infinite

execute if score #temp slowcast matches 0.. as @p[tag=this] unless predicate hp:player/is_sneaking unless predicate hp:player/is_sprinting at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.21585 run function hp:spells/p/patronus_charm/raycast
execute if score #temp slowcast matches 0.. as @p[tag=this] unless predicate hp:player/is_sneaking if predicate hp:player/is_sprinting at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.2806 run function hp:spells/p/patronus_charm/raycast
execute if score #temp slowcast matches 0.. if entity @p[tag=this,predicate=hp:player/is_sneaking] run scoreboard players add @s[tag=!end] slo_dst 1
execute if score #temp slowcast matches 0.. as @p[tag=this] if predicate hp:player/is_sneaking unless predicate hp:player/is_sprinting at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.0655 run function hp:spells/p/patronus_charm/raycast
execute if score #temp slowcast matches 0.. as @p[tag=this] if predicate hp:player/is_sneaking if predicate hp:player/is_sprinting at @s as @e[type=area_effect_cloud,tag=patronusCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.09 run function hp:spells/p/patronus_charm/raycast