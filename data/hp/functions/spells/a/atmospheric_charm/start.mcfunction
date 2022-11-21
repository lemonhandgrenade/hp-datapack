tag @s add this
scoreboard players add system sloID 1
scoreboard players operation @s sloID = system sloID
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","atmosphericCharm","level1"]}
scoreboard players operation @e[type=area_effect_cloud,tag=atmosphericCharm,tag=new,limit=1] UID = @s UID
scoreboard players operation @e[type=area_effect_cloud,tag=atmosphericCharm,tag=new,limit=1] values = temp values
execute as @e[type=area_effect_cloud,tag=slowcast,tag=atmosphericCharm,tag=new,limit=1] run function hp:spells/a/atmospheric_charm/private/setup
tag @s remove this
