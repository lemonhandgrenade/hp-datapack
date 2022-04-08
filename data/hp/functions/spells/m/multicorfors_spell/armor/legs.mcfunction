function hp:spells/m/multicorfors_spell/armor/random_color

data modify storage hp:legs LegsItem set from entity @s Inventory[{Slot:101}]
execute store result storage hp:legs LegsItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:legs LegsItem.Slot set value 0b

data modify block 0 -64 0 Items append from storage hp:legs LegsItem

item replace entity @s armor.legs from block 0 -64 0 container.0