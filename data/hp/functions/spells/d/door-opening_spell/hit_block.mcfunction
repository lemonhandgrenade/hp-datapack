scoreboard players set #temp spell 0
execute if score #temp spell matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=false] positioned ~ ~ ~ unless entity @e[type=interaction,tag=Lock,distance=..1] run function hp:spells/_blocks/door/open
execute if score #temp spell matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=false] positioned ~ ~-1 ~ unless entity @e[type=interaction,tag=Lock,distance=..1] run function hp:spells/_blocks/door/open
execute if score #temp spell matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=true] positioned ~ ~ ~ unless entity @e[type=interaction,tag=Lock,distance=..1] run function hp:spells/_blocks/door/close
execute if score #temp spell matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=true] positioned ~ ~-1 ~ unless entity @e[type=interaction,tag=Lock,distance=..1] run function hp:spells/_blocks/door/close
execute if entity @s[type=area_effect_cloud] run function hp:spells/_base/private/end