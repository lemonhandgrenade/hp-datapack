execute at @s if entity @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}}] run function hp:entities/cauldron/check_item
execute at @s if score #alternate2 values matches 1 run particle minecraft:small_flame ~ ~.15 ~ 0 0 0 0 0

execute if predicate hp:player/no_boots run function hp:entities/cauldron/time_up
#execute if score #alternate2 values matches 1 store result score temp values run data get entity @s ArmorItems[3].tag.Potion[0]
#execute if score #alternate2 values matches 1 unless score temp values matches 9999 run scoreboard players add @s X 1
#
#execute if score @s X matches 300.. run function hp:entities/cauldron/time_up