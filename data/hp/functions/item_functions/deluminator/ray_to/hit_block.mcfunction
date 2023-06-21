execute if block ~ ~ ~ #minecraft:candles run function hp:spells/_blocks/put_out
execute if block ~ ~ ~ #minecraft:campfires run function hp:spells/_blocks/put_out
execute if block ~ ~ ~ redstone_lamp run setblock ~ ~ ~ redstone_lamp[lit=false]

scoreboard players set dstPer slowcast 2
scoreboard players set dst slowcast 144
execute as @p[tag=spellCaster] anchored eyes positioned ^ ^ ^0 run function hp:item_functions/deluminator/ray_back/start