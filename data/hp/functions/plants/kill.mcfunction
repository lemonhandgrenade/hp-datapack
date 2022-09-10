kill @s
execute if entity @s[tag=!spikyBush] run playsound minecraft:block.grass.break block @a ~ ~ ~ 1 0.8
fill ~ ~ ~ ~ ~ ~ air replace minecraft:melon_stem
fill ~ ~ ~ ~ ~ ~ air replace minecraft:structure_void

execute if entity @s[tag=fluxweed] run loot spawn ~ ~ ~ loot hp:seeds/fluxweed
execute if entity @s[tag=knotgrass] run loot spawn ~ ~ ~ loot hp:seeds/knotgrass
execute if entity @s[tag=moly] run loot spawn ~ ~ ~ loot hp:seeds/moly
execute if entity @s[tag=nettle] run loot spawn ~ ~ ~ loot hp:seeds/nettle
execute if entity @s[tag=spikyBush] run loot spawn ~ ~ ~ loot hp:seeds/spiky_bush
execute if entity @s[tag=spikyBush] run function hp:plants/special/spiky_bush_hurt
execute if entity @s[tag=wolfsbane] run loot spawn ~ ~ ~ loot hp:seeds/wolfsbane
execute if entity @s[tag=wormwood] run loot spawn ~ ~ ~ loot hp:seeds/wormwood