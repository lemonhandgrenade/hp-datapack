data modify storage hp:example OffhandItem set from entity @s Inventory[{Slot:-106b}]
data modify storage hp:example OffhandItem.Slot set value 0b
data modify block 0 0 0 Items append from storage hp:example OffhandItem

execute unless data entity @s SelectedItem run data modify storage hp:example MainhandItem set value {id:"minecraft:air",Count:1b}
execute if data entity @s SelectedItem run data modify storage hp:example MainhandItem set from entity @s SelectedItem
data modify storage hp:example MainhandItem.Slot set value 0b
data modify block 0 1 0 Items append from storage hp:example MainhandItem

loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{drop_contents:1b}
loot replace entity @s weapon.offhand 1 mine 0 1 0 minecraft:air{drop_contents:1b}
