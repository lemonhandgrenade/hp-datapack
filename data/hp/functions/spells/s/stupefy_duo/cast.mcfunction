scoreboard players set dst_per slowcast 3
scoreboard players set dst slowcast 64

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/s/stupefy_duo/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Stupefy Duo"]