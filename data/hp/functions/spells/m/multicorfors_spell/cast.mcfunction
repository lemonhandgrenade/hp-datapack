scoreboard players set dst_per slowcast 2
scoreboard players set dst slowcast 36

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/m/multicorfors_spell/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Multicorfors"]