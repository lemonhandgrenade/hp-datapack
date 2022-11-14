execute if score temp values matches 0 run function hp:spells/c/colour_changing_charm/armor/random_color
execute if score temp values matches 1 run scoreboard players set #Final values 16719104
execute if score temp values matches 2 run scoreboard players set #Final values 8453952
execute if score temp values matches 3 run scoreboard players set #Final values 7248624
execute if score temp values matches 4 run scoreboard players set #Final values 16770365

data modify storage hp:chest ChestItem set from entity @s Inventory[{Slot:102b}]
execute store result storage hp:chest ChestItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:chest ChestItem.Slot set value 0b

data modify block 0 -64 0 Items append from storage hp:chest ChestItem

item replace entity @s armor.chest from block 0 -64 0 container.0