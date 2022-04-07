particle soul_fire_flame ~ ~ ~ 0 0 0 0 1

execute if entity @e[tag=!slowcast,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/g/gellert_grindelwalds_lightning_bolt_spell/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~

execute if score @s values matches 1 run function hp:spells/g/gellert_grindelwalds_lightning_bolt_spell/random_dir

#execute facing entity @e[type=#hp:alive,tag=!this,sort=nearest,limit=1,distance=..30] eyes positioned ^ ^ ^10 rotated as @s positioned ^ ^ ^100 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/g/gellert_grindelwalds_lightning_bolt_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/g/gellert_grindelwalds_lightning_bolt_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.1 if block ~ ~ ~ #hp:air run function hp:spells/g/gellert_grindelwalds_lightning_bolt_spell/raycast