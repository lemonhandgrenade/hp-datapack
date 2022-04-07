schedule function hp:100tick 100t

scoreboard players enable @a[tag=animagus] morph
scoreboard players reset @a[tag=!animagus] morph

scoreboard players enable @a injuries
scoreboard players set @a injuries 0
scoreboard players enable @a player
scoreboard players set @a player 0
scoreboard players enable @a duel

execute as @e[tag=cut] run effect give @s wither 1 1 true