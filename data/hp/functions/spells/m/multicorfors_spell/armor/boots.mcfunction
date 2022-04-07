function hp:spells/m/multicorfors_spell/armor/random_color

data modify storage hp:boots BootItem set from entity @s Inventory[{Slot:100b}]
execute store result storage hp:boots BootItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:boots BootItem.Slot set value 0b

data modify block 0 0 0 Items append from storage hp:boots BootItem

item replace entity @s armor.feet from block 0 0 0 container.0