#setblock ~ ~ ~ air destroy
#

execute if score charmsBreakBlocks settings matches 1 run setblock ~ ~ ~ air destroy

execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~ #hp:glass run setblock ~ ~ ~ air destroy
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~1 ~ ~ #hp:glass positioned ~1 ~ ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~1 #hp:glass positioned ~ ~ ~1 run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~-1 ~ ~ #hp:glass positioned ~-1 ~ ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~-1 #hp:glass positioned ~ ~ ~-1 run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~1 ~ #hp:glass positioned ~ ~1 ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~-1 ~ #hp:glass positioned ~ ~-1 ~ run function hp:spells/f/finestra_spell/shatter
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/finestra_spell/private/end