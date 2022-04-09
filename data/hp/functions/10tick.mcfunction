schedule function hp:10tick 10t

execute as @a[tag=voiceLines] run function hp:player/voice_lines/select


execute as @a if score @s duelLeave matches 1.. run function hp:player/duel/leave
execute as @a if score @s duelAccept matches 1.. run function hp:player/duel/accept
execute as @a if score @s duelAccept matches ..-1 run function hp:player/duel/decline

tag @a[tag=!flyingBroom,predicate=!hp:no_broom] add flyingBroom
tag @a[tag=flyingBroom,predicate=hp:no_broom] remove flyingBroom


execute as @e[type=item,tag=!set,nbt={OnGround:1b,Item:{tag:{Broom:1b}}}] at @s if entity @p[x_rotation=90] run tag @s add set
execute as @e[type=item,tag=!set,nbt={OnGround:1b,Item:{tag:{Broom:1b}}}] at @s if block ~ ~ ~ #hp:air if block ~1 ~ ~ #hp:air if block ~-1 ~ ~ #hp:air if block ~ ~ ~1 #hp:air if block ~ ~ ~-1 #hp:air if block ~1 ~ ~1 #hp:air if block ~1 ~ ~-1 #hp:air if block ~-1 ~ ~1 #hp:air if block ~-1 ~ ~-1 #hp:air run tag @s add space
execute as @e[type=item,tag=space,tag=!set,nbt={OnGround:1b,Item:{tag:{Broom:1b}}}] at @s run function hp:broom/select_broom


