tag @s add this
scoreboard players add system slo_id 1
scoreboard players operation @s slo_id = system slo_id
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","bluebellFlames","level1"]}
scoreboard players operation @e[type=area_effect_cloud,tag=bluebellFlames,tag=new,limit=1] UID = @s UID
scoreboard players operation @e[type=area_effect_cloud,tag=bluebellFlames,tag=new,limit=1] values = temp values
execute as @e[type=area_effect_cloud,tag=slowcast,tag=bluebellFlames,tag=new,limit=1] run function hp:spells/b/bluebell_flames/private/setup
tag @s remove this
