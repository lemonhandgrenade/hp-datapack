scoreboard players set dst_per slowcast 8
scoreboard players set dst slowcast 512

execute anchored eyes positioned ^-0.35 ^.3 ^.5 run function hp:spells/p/periculum/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Periculum"]