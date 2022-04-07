setblock ~ ~ ~ air
summon item ~ ~ ~ {Item:{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"Guitar","color":"white","italic":false}'},CustomModelData:300,OldItem:{id:"minecraft:cauldron",Count:1b}}}}
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/cauldron_to_guitar_spell/private/end