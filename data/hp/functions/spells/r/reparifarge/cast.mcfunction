scoreboard players set dstPer slowcast 4
scoreboard players set dst slowcast 12

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/r/reparifarge/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Reparifarge"]