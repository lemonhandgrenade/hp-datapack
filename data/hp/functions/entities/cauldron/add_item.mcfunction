execute store result score #temp values run data get entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
tellraw @p[tag=debug] ["",{"text":"Item ID: ","color":"#4B0082"},{"score":{"name":"#temp","objective":"values"},"color":"#4B0082"}]

execute if score @s potionMath matches 0 run data modify entity @s ArmorItems[3].tag.Potion[0] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 1 run data modify entity @s ArmorItems[3].tag.Potion[1] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 2 run data modify entity @s ArmorItems[3].tag.Potion[2] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 3 run data modify entity @s ArmorItems[3].tag.Potion[3] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 4 run data modify entity @s ArmorItems[3].tag.Potion[4] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 5 run data modify entity @s ArmorItems[3].tag.Potion[5] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 6 run data modify entity @s ArmorItems[3].tag.Potion[6] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 7 run data modify entity @s ArmorItems[3].tag.Potion[7] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 8 run data modify entity @s ArmorItems[3].tag.Potion[8] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 9 run data modify entity @s ArmorItems[3].tag.Potion[9] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 10 run data modify entity @s ArmorItems[3].tag.Potion[10] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 11 run data modify entity @s ArmorItems[3].tag.Potion[11] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 12 run data modify entity @s ArmorItems[3].tag.Potion[12] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 13 run data modify entity @s ArmorItems[3].tag.Potion[13] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 14 run data modify entity @s ArmorItems[3].tag.Potion[14] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 15 run data modify entity @s ArmorItems[3].tag.Potion[15] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 16 run data modify entity @s ArmorItems[3].tag.Potion[16] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 17 run data modify entity @s ArmorItems[3].tag.Potion[17] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 18 run data modify entity @s ArmorItems[3].tag.Potion[18] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 19 run data modify entity @s ArmorItems[3].tag.Potion[19] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 20 run data modify entity @s ArmorItems[3].tag.Potion[20] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 21 run data modify entity @s ArmorItems[3].tag.Potion[21] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 22 run data modify entity @s ArmorItems[3].tag.Potion[22] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 23 run data modify entity @s ArmorItems[3].tag.Potion[23] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 24 run data modify entity @s ArmorItems[3].tag.Potion[24] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 25 run data modify entity @s ArmorItems[3].tag.Potion[25] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 26 run data modify entity @s ArmorItems[3].tag.Potion[26] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 27 run data modify entity @s ArmorItems[3].tag.Potion[27] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 28 run data modify entity @s ArmorItems[3].tag.Potion[28] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 29 run data modify entity @s ArmorItems[3].tag.Potion[29] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 30 run data modify entity @s ArmorItems[3].tag.Potion[30] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID
execute if score @s potionMath matches 31 run data modify entity @s ArmorItems[3].tag.Potion[31] set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.PotionID

execute if score #temp values matches 1190 run data modify entity @s ArmorItems[3].tag.SpecialUUID set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.playerUUID
execute if score #temp values matches 1190 run data modify entity @s ArmorItems[3].tag.Name set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.playerName

data modify entity @s HandItems[0].tag.display.color set from entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] Item.tag.Color

playsound minecraft:block.bubble_column.bubble_pop block @a
playsound minecraft:block.bubble_column.whirlpool_ambient block @a

particle minecraft:bubble_pop ~ ~.5 ~ 0.01 0.01 0.01 0 3
particle minecraft:dust_color_transition 0.45 0 .1 0.8 .68 0 .03 ~ ~.5 ~ 0.01 0.01 0.01 0 4 normal @a
particle minecraft:dust_color_transition 0.10 0.27 .16 0.8 .16 0.38 .23 ~ ~.5 ~ 0.01 0.01 0.01 0 4 normal @a
particle minecraft:dust_color_transition 0.05 0.10 .25 0.8 .13 0.18 .35 ~ ~.5 ~ 0.01 0.01 0.01 0 4 normal @a
particle minecraft:dust_color_transition 0.49 0.38 .11 0.8 .45 0.37 .17 ~ ~.5 ~ 0.01 0.01 0.01 0 4 normal @a

scoreboard players add @s potionMath 1
kill @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1]