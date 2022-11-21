tag @s add this
scoreboard players add system sloID 1
scoreboard players operation @s sloID = system sloID
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","arrestoMomentoDuo","level1"]}
scoreboard players operation @e[type=area_effect_cloud,tag=arrestoMomentoDuo,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=arrestoMomentoDuo,tag=new,limit=1] run function hp:spells/a/arresto_momento_duo/private/setup
tag @s remove this
