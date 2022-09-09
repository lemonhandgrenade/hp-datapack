execute if block ~ ~ ~ minecraft:melon_stem run function hp:plants/melon_check

scoreboard players set @s X 1
scoreboard players set temp values 0
execute as @p[distance=..1.6] if predicate hp:plants/bone_meal at @s as @e[type=armor_stand,tag=plant,sort=nearest,limit=1] if score @s X matches 1 run scoreboard players set temp values 1

execute if block ~ ~ ~ air if score @s plantState matches 0 run function hp:plants/kill

execute if entity @p[distance=..3.2] if score temp values matches 0 if data entity @s Marker run function hp:plants/hitbox/ungrowable
execute if entity @p[distance=..1.6] if score temp values matches 1 if score @s anim matches ..2 unless data entity @s Marker unless block ~1 ~ ~ melon_stem unless block ~-1 ~ ~ melon_stem unless block ~ ~ ~1 melon_stem unless block ~ ~ ~-1 melon_stem run function hp:plants/hitbox/growable

execute if score @s anim matches 3 if score #alternate2 values matches 1 if score plantParticles settings matches 1 run particle minecraft:happy_villager ~ ~.9 ~ 0 0 0 0 0
scoreboard players set @s X 0

execute unless score #timeMarker plantTime matches 0 run scoreboard players add @s[scores={anim=..2}] plantTime 1
## timeMarker is the tick count needed to force grow the plant
## a normal crop takes ~30 min to grow at the default randomTickSpeed of 3
## so to find the base time it's 30min to seconds -> 1800s
## 1800 seconds to ticks is 1800*20 => 36000t
## divide by the 3 stages a plant grows in: 36000/3 => 12000t
## this function takes place every 10 ticks so divide again: 12000/10 => 1200t
## 1200 is the base but this doesn't account for random tick speed
## the final number is divided by random tick speed so we need to normalise it by multiplying
## in our case 1200*3 (default random tick speed) => 3600
## this means 3600 is the base and 3600 / randomTickSpeed is the timeMarker
## timeMarker Is One Stage
execute if score @s plantTime > #timeMarker plantTime run function hp:plants/force_grow

execute if entity @s[predicate=hp:player/no_helmet] run function hp:plants/kill
execute if block ~ ~-.1 ~ air run function hp:plants/kill
execute align xyz positioned ~0.5 ~ ~0.5 if entity @s[distance=0.3..] run kill @s
execute unless block ~ ~ ~ melon_stem unless block ~ ~ ~ structure_void unless block ~ ~ ~ air run function hp:plants/kill