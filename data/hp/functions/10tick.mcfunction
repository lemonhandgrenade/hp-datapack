schedule function hp:10tick 10t

execute as @a run function hp:player/player_10tick
kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b,tag:{KILL:1B}}}]