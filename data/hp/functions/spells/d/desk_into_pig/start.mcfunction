tag @s add this
scoreboard players add system slo_id 1
scoreboard players operation @s slo_id = system slo_id
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","deskIntoPig","level2"]}
scoreboard players operation @e[type=area_effect_cloud,tag=deskIntoPig,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=deskIntoPig,tag=new,limit=1] run function hp:spells/d/desk_into_pig/private/setup
tag @s remove this
