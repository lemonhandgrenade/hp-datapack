scoreboard players set dstPer slowcast 8
scoreboard players set dst slowcast 48

execute anchored eyes run particle dolphin ^-0.35 ^.3 ^.5 0.01 0.01 0.01 0 10

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/m/mending_charm/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Reparo"]