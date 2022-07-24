schedule function hp:100tick 100t

execute store result score moonTime moon run time query daytime
execute store result score moonPhase moon run time query day
scoreboard players operation moonPhase moon %= 8 values

scoreboard players add @a spellCooldown 0
scoreboard players add @a currentSpellSlot 0
scoreboard players add @a deaths 0

scoreboard players enable @a[tag=animagus] morph
scoreboard players reset @a[tag=!animagus] morph

execute if score playerInfo settings matches 0 run scoreboard players reset @a injuries
execute if score playerInfo settings matches 0 run scoreboard players reset @a player
execute if score playerInfo settings matches 1 run scoreboard players enable @a injuries
execute if score playerInfo settings matches 1 run scoreboard players enable @a player

execute as @e[tag=cut] run effect give @s wither 1 1 true