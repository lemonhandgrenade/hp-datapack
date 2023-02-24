scoreboard players operation #current UID = @s UID
tag @s add end
scoreboard players reset @s UID
scoreboard players reset @s sloID
scoreboard players reset @s sloDst
scoreboard players reset @s sloDstPer
kill @s

execute as @e[type=armor_stand,tag=patronusCharm] if score @s UID = #current UID run function hp:spells/_entities/patronus/end

execute at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 100 normal
execute at @s run particle minecraft:wax_off ~ ~ ~ 0.1 0.1 0.1 10 100 normal