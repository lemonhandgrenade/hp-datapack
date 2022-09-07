execute if block ~ ~ ~ minecraft:melon_stem run function hp:plants/melon_check

scoreboard players set @s X 1
scoreboard players set temp values 0
execute as @p[distance=..1.6] if predicate hp:plants/bone_meal at @s as @e[type=armor_stand,tag=plant,sort=nearest,limit=1] if score @s X matches 1 run scoreboard players set temp values 1

execute if block ~ ~ ~ air if score @s plantState matches 0 run function hp:plants/kill

execute if entity @p[distance=..1.6] if score temp values matches 0 if data entity @s Marker run function hp:plants/hitbox/ungrowable
execute if entity @p[distance=..1.6] if score temp values matches 1 unless data entity @s Marker unless block ~1 ~ ~ melon_stem unless block ~-1 ~ ~ melon_stem unless block ~ ~ ~1 melon_stem unless block ~ ~ ~-1 melon_stem run function hp:plants/hitbox/growable

execute if score @s anim matches 3 if score #alternate2 values matches 1 if score plantParticles settings matches 1 run particle minecraft:happy_villager ~ ~.9 ~ 0 0 0 0 0
scoreboard players set @s X 0

scoreboard players add @s[scores={anim=..2}] plantTime 1

## 8160 Is to total score of all stages (in ticks)
## 2040 Is One Stage
execute if score @s plantTime matches 2040.. run function hp:plants/force_grow

execute if entity @s[predicate=hp:player/no_helmet] run function hp:plants/kill
execute if block ~ ~-.1 ~ air run function hp:plants/kill
execute align xyz positioned ~0.5 ~ ~0.5 if entity @s[distance=0.3..] run kill @s
execute unless block ~ ~ ~ melon_stem unless block ~ ~ ~ structure_void unless block ~ ~ ~ air run function hp:plants/kill