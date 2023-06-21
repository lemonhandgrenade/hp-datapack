scoreboard players set @s plantTime 0
setblock ~ ~ ~ minecraft:structure_void replace
execute as @p[distance=..1.6] if predicate hp:plants/bone_meal run setblock ~ ~ ~ minecraft:melon_stem[age=0] replace
execute store result score #temp values run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players operation #temp values = #temp values
scoreboard players add #temp values 1
scoreboard players operation #temp values %= 10 values
execute if score #temp values matches ..2 run scoreboard players add @s anim 1
execute if score #temp values matches ..2 store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #temp values