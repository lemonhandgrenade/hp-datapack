scoreboard players set dst_per slowcast 2
scoreboard players set dst slowcast 48

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/s/severing_charm/start

execute anchored eyes run particle dust 1 0.5 1 0.6 ^-0.35 ^.3 ^.5 0 0 0 0 10
execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Diffindo"]