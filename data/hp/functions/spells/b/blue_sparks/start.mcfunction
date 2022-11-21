tag @s add this
scoreboard players add system sloID 1
scoreboard players operation @s sloID = system sloID
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","blueSparks","level1"]}
scoreboard players operation @e[type=area_effect_cloud,tag=blueSparks,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=blueSparks,tag=new,limit=1] run function hp:spells/b/blue_sparks/private/setup
tag @s remove this
