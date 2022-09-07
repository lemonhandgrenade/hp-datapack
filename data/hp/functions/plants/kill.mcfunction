kill @s
playsound minecraft:block.grass.break block @a ~ ~ ~ 1 0.8
fill ~ ~ ~ ~ ~ ~ air replace minecraft:melon_stem
fill ~ ~ ~ ~ ~ ~ air replace minecraft:structure_void

execute if entity @s[tag=fluxweed] run loot spawn ~ ~ ~ loot hp:seeds/fluxweed
execute if entity @s[tag=knotgrass] run loot spawn ~ ~ ~ loot hp:seeds/knotgrass