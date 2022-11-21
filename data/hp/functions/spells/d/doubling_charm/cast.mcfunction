scoreboard players set dstPer slowcast 4
scoreboard players set dst slowcast 24

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/d/doubling_charm/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Geminio"]