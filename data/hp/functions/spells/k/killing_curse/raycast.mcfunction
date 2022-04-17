particle minecraft:dust_color_transition 0.84 1.0 0.97 1.5 0.12 0.98 0.24 ~ ~ ~ 0.01 0.01 0.01 0 10 

execute if entity @e[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/k/killing_curse/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.3 unless block ~ ~ ~ #hp:air run function hp:spells/k/killing_curse/private/end
execute if score @s values matches 0 if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/k/killing_curse/raycast
execute if score @s values matches 0 if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/k/killing_curse/raycast
#execute if score @s values matches 1 if entity @s[tag=!reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=killingCurse,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.5 run function hp:spells/k/killing_curse/raycast
#execute if score @s values matches 1 if entity @s[tag=reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=killingCurse,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^-0.5 run function hp:spells/k/killing_curse/raycast

execute if score @s values matches 1 if entity @s[tag=!reflected] if score #temp slowcast matches 0.. rotated as @a[tag=this,sort=nearest,limit=1] positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/k/killing_curse/raycast
execute if score @s values matches 1 if entity @s[tag=reflected] if score #temp slowcast matches 0.. rotated as @a[tag=this,sort=nearest,limit=1] positioned ^ ^ ^-0.1 if block ~ ~ ~ #hp:air run function hp:spells/k/killing_curse/raycast