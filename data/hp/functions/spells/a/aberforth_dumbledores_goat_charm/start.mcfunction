tag @s add this
scoreboard players add system slo_id 1
scoreboard players operation @s slo_id = system slo_id
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","aberforthGoatCharm"]}
scoreboard players operation @e[type=area_effect_cloud,tag=aberforthGoatCharm,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=aberforthGoatCharm,tag=new,limit=1] run function hp:spells/a/aberforth_dumbledores_goat_charm/private/setup
tag @s remove this
