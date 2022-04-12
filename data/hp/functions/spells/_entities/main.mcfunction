execute if entity @s[tag=weather,tag=cloud] run function hp:spells/_entities/weather/cloud
execute if entity @s[tag=weather,tag=rain] run function hp:spells/_entities/weather/rain_cloud
execute if entity @s[tag=weather,tag=snow] run function hp:spells/_entities/weather/snow_cloud


execute if entity @s[tag=push] run function hp:spells/_entities/push/push

execute if entity @s[type=snowball] if score #alternate values matches -1 run data modify entity @s Air set value 0s
execute if entity @s[type=snowball] if score #alternate values matches 1 run data modify entity @s Air set value 1s

execute if entity @s[tag=patronus] run function hp:spells/_entities/patronus/select

execute if entity @s[tag=web] run function hp:spells/_entities/web/anim

# Brooms
execute as @s[type=armor_stand,tag=broom,tag=broomElytra] run function hp:broom/base

execute if entity @s[tag=portkeyItem] run function hp:spells/_entities/portkey/main


execute if score #3 values matches 1 if entity @s[tag=morsmordre] positioned ~ 512 ~ run function hp:spells/_entities/morsmordre/anim

