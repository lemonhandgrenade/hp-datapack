function hp:spells/m/multicorfors_spell/armor/random_color

data modify storage hp:helmet HelmetItem set from entity @s Inventory[{Slot:103b}]
execute store result storage hp:helmet HelmetItem.tag.display.color int 1 run scoreboard players get #Final values
data modify storage hp:helmet HelmetItem.Slot set value 0b

data modify block 0 -64 0 Items append from storage hp:helmet HelmetItem

item replace entity @s armor.head from block 0 -64 0 container.0