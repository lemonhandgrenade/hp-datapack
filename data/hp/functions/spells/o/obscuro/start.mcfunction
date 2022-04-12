tag @s add this
scoreboard players add system slo_id 1
scoreboard players operation @s slo_id = system slo_id
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","obscuro","level3"]}
scoreboard players operation @e[type=area_effect_cloud,tag=obscuro,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=obscuro,tag=new,limit=1] run function hp:spells/o/obscuro/private/setup
tag @s remove this
