tag @s[scores={vc=..0}] add bigHead
scoreboard players set @s[scores={vc=..0}] vc 60

data modify storage hp:head HeadItem set from entity @s Inventory[{Slot:103b}]
data modify storage hp:head HeadItem.Slot set value 0b
data modify block 0 -64 0 Items append from storage hp:head HeadItem
loot give @s mine 0 -64 0 air{drop_contents:1b} 


loot replace entity @s armor.head loot hp:player_head
item modify entity @s armor.head hp:binding