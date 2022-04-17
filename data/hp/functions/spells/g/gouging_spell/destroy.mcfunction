setblock ~ ~ ~ cobblestone

execute align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["mendingCharm","gougingSpell","spellEntity"]}
execute if entity @s[type=area_effect_cloud] run function hp:spells/g/gouging_spell/private/end