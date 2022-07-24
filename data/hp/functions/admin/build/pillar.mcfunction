fill ~ ~ ~ ~ ~1 ~ sandstone_wall
setblock ~1 ~1 ~ minecraft:structure_void keep
setblock ~-1 ~1 ~ minecraft:structure_void keep
setblock ~ ~1 ~1 minecraft:structure_void keep
setblock ~ ~1 ~-1 minecraft:structure_void keep
setblock ~ ~2 ~ light[level=15]
summon item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"minecraft:bricks",Count:1b,tag:{CustomModelData:1}}}