scoreboard players set dstPer slowcast 1
scoreboard players set dst slowcast 48

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/f/freezing_charm/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Immobulus"]