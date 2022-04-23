schedule function hp:100tick 100t

scoreboard players enable @a[tag=animagus] morph
scoreboard players reset @a[tag=!animagus] morph

execute if score playerInfo settings matches 0 run scoreboard players reset @a injuries
execute if score playerInfo settings matches 0 run scoreboard players reset @a player
execute if score playerInfo settings matches 1 run scoreboard players enable @a injuries
execute if score playerInfo settings matches 1 run scoreboard players enable @a player

execute as @e[tag=cut] run effect give @s wither 1 1 true