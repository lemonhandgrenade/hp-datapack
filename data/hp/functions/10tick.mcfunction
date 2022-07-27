schedule function hp:10tick 10t

execute as @e[type=armor_stand,tag=firework] at @s run function hp:fireworks/select
execute as @a run function hp:player/player_10tick
kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b,tag:{KILL:1B}}}]