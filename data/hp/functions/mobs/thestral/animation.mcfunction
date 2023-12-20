function hp:player/get_motion

execute if block ~ ~-0.2 ~ air unless predicate hp:mobs/thestral/flying run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1053
execute unless block ~ ~-0.2 ~ air if score @s Y matches 0 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1050
execute unless block ~ ~-0.2 ~ air if score @s Y matches 1..2625 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1051
execute unless block ~ ~-0.2 ~ air if score @s Y matches 2626.. run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1052

function hp:mobs/thestral/sounds