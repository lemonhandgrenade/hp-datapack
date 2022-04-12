execute at @a[distance=1..10] run particle minecraft:end_rod ~ ~1 ~ 0.25 .5 0.25 0 1000 normal @s

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Homenum Revelio"]