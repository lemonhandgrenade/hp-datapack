scoreboard players set dst_per slowcast 16
scoreboard players set dst slowcast 256

scoreboard players set temp values 1
execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/k/killing_curse/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Avada Kedavra"]
