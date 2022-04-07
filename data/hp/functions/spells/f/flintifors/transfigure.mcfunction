data modify storage hp:flintifors Item set from entity @s Item
data modify storage hp:flintifors Item.tag.PreItem set from storage hp:flintifors Item

data modify storage hp:flintifors Item.id set value "minecraft:flint_and_steel"
data modify storage hp:flintifors Item.tag.display.Name set value '{"text":"Matchbox","italic":false}'
data modify storage hp:flintifors Item.tag.display.Lore set value ['{"text":"Matches: 20","italic":false}']
data modify storage hp:flintifors Item.tag merge value {CustomModelData:1b,cUses:19,cDamage:0,cDamageMax:19,HideFlags:32,Damage:10}
data modify storage hp:flintifors Item.Slot set value 0b

data modify block 0 0 0 Items append from storage hp:flintifors Item
execute at @s run loot spawn ~ ~ ~ mine 0 0 0 minecraft:air{drop_contents:1b}



kill @s
