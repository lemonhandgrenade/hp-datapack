schedule function hp:100tick 100t

scoreboard players enable @a[tag=animagus] morph
scoreboard players reset @a[tag=!animagus] morph

scoreboard players enable @a injuries
scoreboard players enable @a player

execute as @e[tag=cut] run effect give @s wither 1 1 true