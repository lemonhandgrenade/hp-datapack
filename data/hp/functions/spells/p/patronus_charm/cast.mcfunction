scoreboard players set dst_per slowcast 1
scoreboard players set dst slowcast 128
scoreboard players set temp values 0
scoreboard players operation #current UID = @s UID
scoreboard players add @s patronusID 0
execute if entity @s[scores={patronusID=0}] store result score @s patronusID run loot spawn 0 0 0 loot hp:rng/rng5

execute as @e[type=area_effect_cloud,tag=patronusCharm] if score @s UID = #current UID run scoreboard players set temp values 1

execute if score temp values matches 0 anchored eyes positioned ^-0.35 ^.3 ^.5 run function hp:spells/p/patronus_charm/start
execute if score temp values matches 0 if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Expecto Patronum"]