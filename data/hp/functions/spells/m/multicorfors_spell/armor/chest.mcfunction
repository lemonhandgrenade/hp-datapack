function hp:spells/m/multicorfors_spell/armor/random_color

data modify storage hp:chest ChestItem set from entity @s Inventory[{Slot:102b}]
execute store result storage hp:chest ChestItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:chest ChestItem.Slot set value 0b

data modify block 0 0 0 Items append from storage hp:chest ChestItem

item replace entity @s armor.chest from block 0 0 0 container.0