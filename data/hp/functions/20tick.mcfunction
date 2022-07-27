schedule function hp:20tick 20t

kill @e[type=arrow,tag=spellEntity,tag=conjuredEntity,nbt={inGround:1b}]


execute as @e[type=item,tag=!set,nbt={OnGround:1b,Item:{Count:1b,tag:{Broom:1b}}}] at @s if entity @p[x_rotation=90] run tag @s add set
execute as @e[type=item,tag=!set,nbt={OnGround:1b,Item:{Count:1b,tag:{Broom:1b}}}] at @s if block ~ ~ ~ #hp:air if block ~1 ~ ~ #hp:air if block ~-1 ~ ~ #hp:air if block ~ ~ ~1 #hp:air if block ~ ~ ~-1 #hp:air if block ~1 ~ ~1 #hp:air if block ~1 ~ ~-1 #hp:air if block ~-1 ~ ~1 #hp:air if block ~-1 ~ ~-1 #hp:air run tag @s add space
execute as @e[type=item,tag=space,tag=!set,nbt={OnGround:1b,Item:{Count:1b,tag:{Broom:1b}}}] at @s run function hp:broom/select_broom

tag @e[tag=slowedFall,nbt={OnGround:1b}] remove slowedFall

execute as @e[type=armor_stand,tag=caveInimicum] run function hp:spells/c/cave_inimicum/check

execute as @e run function hp:player/injuries/effect

execute as @e[type=armor_stand,tag=candleLight] at @s run function hp:spells/c/candle_conjuring_spell/light

execute as @e[type=marker,tag=transfiguredBlock] at @s if block ~ ~ ~ air run kill @s

execute as @a at @s run function hp:player/player_20tick