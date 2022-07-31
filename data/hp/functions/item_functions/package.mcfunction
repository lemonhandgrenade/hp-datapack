advancement revoke @s only hp:offhand_package

data modify storage hp:example Item set from entity @s Inventory[{Slot:-106b}]
data modify storage hp:example Items set from storage hp:example Item.tag.WrappedItems
#data modify storage hp:example Item.Slot set value 0b
data modify storage hp:example Items[0].Slot set value 0
data modify storage hp:example Items[1].Slot set value 1
data modify storage hp:example Items[2].Slot set value 2
data modify storage hp:example Items[3].Slot set value 3
data modify storage hp:example Items[4].Slot set value 4


data modify block 0 -64 0 Items set from storage hp:example Items
execute at @s run loot give @s mine 0 -64 0 minecraft:air{drop_contents:1b}

item replace entity @s weapon.offhand with air
data remove storage hp:example Item