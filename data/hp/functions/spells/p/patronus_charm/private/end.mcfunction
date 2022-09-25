scoreboard players operation #current UID = @s UID

scoreboard players reset @s slo_id
scoreboard players reset @s slo_dst
scoreboard players reset @s slo_dst_per
kill @s

execute as @e[type=armor_stand,tag=patronusCharm] if score @s UID = #current UID run kill @s

execute at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.1 100 normal
execute at @s run particle minecraft:wax_off ~ ~ ~ 0.1 0.1 0.1 10 100 normal