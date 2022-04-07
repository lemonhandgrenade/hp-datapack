data modify storage hp:scribblifors Item set from entity @s Item
data modify storage hp:scribblifors Item.tag.PreItem set from storage hp:scribblifors Item

data modify storage hp:scribblifors Item.id set value "minecraft:feather"
data modify storage hp:scribblifors Item.tag.Scribblifors set value 1
data modify storage hp:scribblifors Item.Slot set value 0b


data modify block 0 -64 0 Items append from storage hp:scribblifors Item
execute at @s run loot spawn ~ ~ ~ mine 0 -64 0 minecraft:air{drop_contents:1b}

kill @s
