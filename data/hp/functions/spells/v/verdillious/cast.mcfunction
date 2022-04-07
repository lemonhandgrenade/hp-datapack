tag @s add this
effect give @a[distance=..2] wither 2 1 true
tag @s remove this

execute anchored eyes run particle minecraft:totem_of_undying ^-0.35 ^.3 ^.5 0.05 0.05 0.05 0.05 10
execute anchored eyes run particle minecraft:dust 0 0.8 0 1 ^-0.35 ^.3 ^.5 0.05 0.05 0.05 0.05 10
execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Verdillious"]