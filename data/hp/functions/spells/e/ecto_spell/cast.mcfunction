scoreboard players set dstPer slowcast 1
scoreboard players set dst slowcast 256

execute anchored eyes positioned ^ ^ ^0.1 run function hp:spells/e/ecto_spell/start

execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Ectomatic"]