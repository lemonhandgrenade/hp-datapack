particle minecraft:crit ~ ~ ~ 0 0 0 0 10
execute if entity @a[tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @a[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/k/knockback_jinx_duo/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/k/knockback_jinx_duo/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/k/knockback_jinx_duo/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/k/knockback_jinx_duo/raycast