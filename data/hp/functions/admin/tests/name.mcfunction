loot replace block 0 -64 0 container.0 loot hp:player_head
data modify storage hp:temp name set from block 0 -64 0 Items[{Slot:0b}].tag.SkullOwner.Name
tellraw @s {"nbt":"name","storage":"hp:temp"}