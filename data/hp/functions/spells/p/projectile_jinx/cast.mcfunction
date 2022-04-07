scoreboard players set dst_per slowcast 2
scoreboard players set dst slowcast 32

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/p/projectile_jinx/start


execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Waddiwasi"]