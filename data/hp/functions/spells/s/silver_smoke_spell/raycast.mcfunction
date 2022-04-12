function hp:spells/s/silver_smoke_spell/particles

execute if entity @e[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/silver_smoke_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 unless block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/private/end
execute facing entity @e[type=#hp:alive,tag=!this,sort=nearest,limit=1,distance=..30] eyes positioned ^ ^ ^10 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
#execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/raycast
#execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/raycast

execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=silverSmokeSpell,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.1 run function hp:spells/s/silver_smoke_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=silverSmokeSpell,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^-0.1 run function hp:spells/s/silver_smoke_spell/raycast