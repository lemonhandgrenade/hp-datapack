execute if score temp values matches 0 run function hp:spells/c/colour_changing_charm/armor/random_color
execute if score temp values matches 1 run scoreboard players set #Final values 16719104
execute if score temp values matches 2 run scoreboard players set #Final values 8453952
execute if score temp values matches 3 run scoreboard players set #Final values 7248624
execute if score temp values matches 4 run scoreboard players set #Final values 16770365

data modify storage hp:armor FeetItem set from entity @s Inventory[{Slot:100b}]
execute store result storage hp:armor FeetItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:armor FeetItem.Slot set value 0b

data modify block 0 -63 0 Items append from storage hp:armor FeetItem

item replace entity @s armor.feet from block 0 -63 0 container.0