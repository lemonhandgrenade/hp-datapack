execute if score #alternate2 values matches 1 run scoreboard players add @s anim 1
scoreboard players set @s[scores={anim=15..}] anim 0

execute if score @s anim matches 0 run data merge entity @s {Motion:[0.0,0.21,0.0]}
execute if score @s anim matches 0 run data modify entity @s[tag=!full] ArmorItems[3].tag.CustomModelData set value 11
execute if score @s anim matches 0 run data modify entity @s[tag=full] ArmorItems[3].tag.CustomModelData set value 13

execute if score @s anim matches 4 run data modify entity @s[tag=!full] ArmorItems[3].tag.CustomModelData set value 10
execute if score @s anim matches 4 run data modify entity @s[tag=full] ArmorItems[3].tag.CustomModelData set value 12