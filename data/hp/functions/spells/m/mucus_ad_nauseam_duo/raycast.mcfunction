particle dust_color_transition 0.2 0.8 0.3 1 0 1 0 ~ ~ ~ 0 0 0 0 1

execute if entity @a[tag=!this,dx=0,tag=!hasCold] positioned ~-0.7 ~-0.7 ~-0.7 if entity @a[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/m/mucus_ad_nauseam_duo/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/m/mucus_ad_nauseam_duo/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/m/mucus_ad_nauseam_duo/raycast

