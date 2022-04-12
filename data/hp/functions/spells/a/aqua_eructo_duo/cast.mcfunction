scoreboard players set dst_per slowcast 4
scoreboard players set dst slowcast 320

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/a/aqua_eructo_duo/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Aqua Eructo Duo"]