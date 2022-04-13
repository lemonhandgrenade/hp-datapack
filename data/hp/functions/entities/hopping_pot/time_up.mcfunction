scoreboard players add @s values 0

playsound minecraft:block.bubble_column.bubble_pop block @a
playsound minecraft:block.bubble_column.whirlpool_ambient block @a

particle minecraft:bubble_pop ~ ~1.2 ~ 0.01 0.01 0.01 0 3
particle minecraft:flame ~ ~1.2 ~ 0.1 0.1 0.1 0 10

particle minecraft:end_rod ~ ~1.6 ~ 0.01 0.01 0.01 0 4 normal @a

data modify entity @s ArmorItems[0] set value {id:"minecraft:oak_button",Count:1b,tag:{KILL:1b}}
scoreboard players add @s values 1