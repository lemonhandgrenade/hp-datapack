scoreboard players add @s values 0

playsound minecraft:block.bubble_column.bubble_pop block @a
playsound minecraft:block.bubble_column.whirlpool_ambient block @a

particle minecraft:bubble_pop ~ ~1.2 ~ 0.01 0.01 0.01 0 3
particle minecraft:flame ~ ~1.2 ~ 0.1 0.1 0.1 0 10

particle minecraft:end_rod ~ ~1.6 ~ 0.01 0.01 0.01 0 4 normal @a

data modify entity @s ArmorItems[0] set value {id:"minecraft:oak_button",Count:1b,tag:{KILL:1b}}

execute if score @s values matches 0 run data modify entity @s ArmorItems[3].tag.Potion[0] set value 9999
execute if score @s values matches 1 run data modify entity @s ArmorItems[3].tag.Potion[1] set value 9999
execute if score @s values matches 2 run data modify entity @s ArmorItems[3].tag.Potion[2] set value 9999
execute if score @s values matches 3 run data modify entity @s ArmorItems[3].tag.Potion[3] set value 9999
execute if score @s values matches 4 run data modify entity @s ArmorItems[3].tag.Potion[4] set value 9999
execute if score @s values matches 5 run data modify entity @s ArmorItems[3].tag.Potion[5] set value 9999
execute if score @s values matches 6 run data modify entity @s ArmorItems[3].tag.Potion[6] set value 9999
execute if score @s values matches 7 run data modify entity @s ArmorItems[3].tag.Potion[7] set value 9999
execute if score @s values matches 8 run data modify entity @s ArmorItems[3].tag.Potion[8] set value 9999
execute if score @s values matches 9 run data modify entity @s ArmorItems[3].tag.Potion[9] set value 9999
execute if score @s values matches 10 run data modify entity @s ArmorItems[3].tag.Potion[10] set value 9999
execute if score @s values matches 11 run data modify entity @s ArmorItems[3].tag.Potion[11] set value 9999
execute if score @s values matches 12 run data modify entity @s ArmorItems[3].tag.Potion[12] set value 9999
execute if score @s values matches 13 run data modify entity @s ArmorItems[3].tag.Potion[13] set value 9999
execute if score @s values matches 14 run data modify entity @s ArmorItems[3].tag.Potion[14] set value 9999
execute if score @s values matches 15 run data modify entity @s ArmorItems[3].tag.Potion[15] set value 9999
execute if score @s values matches 16 run data modify entity @s ArmorItems[3].tag.Potion[16] set value 9999
execute if score @s values matches 17 run data modify entity @s ArmorItems[3].tag.Potion[17] set value 9999
execute if score @s values matches 18 run data modify entity @s ArmorItems[3].tag.Potion[18] set value 9999
execute if score @s values matches 19 run data modify entity @s ArmorItems[3].tag.Potion[19] set value 9999
execute if score @s values matches 20 run data modify entity @s ArmorItems[3].tag.Potion[20] set value 9999
execute if score @s values matches 21 run data modify entity @s ArmorItems[3].tag.Potion[21] set value 9999
execute if score @s values matches 22 run data modify entity @s ArmorItems[3].tag.Potion[22] set value 9999
execute if score @s values matches 23 run data modify entity @s ArmorItems[3].tag.Potion[23] set value 9999
execute if score @s values matches 24 run data modify entity @s ArmorItems[3].tag.Potion[24] set value 9999
execute if score @s values matches 25 run data modify entity @s ArmorItems[3].tag.Potion[25] set value 9999
execute if score @s values matches 26 run data modify entity @s ArmorItems[3].tag.Potion[26] set value 9999
execute if score @s values matches 27 run data modify entity @s ArmorItems[3].tag.Potion[27] set value 9999
execute if score @s values matches 28 run data modify entity @s ArmorItems[3].tag.Potion[28] set value 9999
execute if score @s values matches 29 run data modify entity @s ArmorItems[3].tag.Potion[29] set value 9999
execute if score @s values matches 30 run data modify entity @s ArmorItems[3].tag.Potion[30] set value 9999
execute if score @s values matches 31 run data modify entity @s ArmorItems[3].tag.Potion[31] set value 9999

scoreboard players add @s values 1