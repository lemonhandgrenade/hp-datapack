execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function hp:inv/store_potion
advancement revoke @s only hp:drink_potion

tellraw @s[tag=debug] ["",{"text":"Potion ID: ","color":"#4B0082"},{"nbt":"SelectedItem.tag.CustomModelData","entity":"@s","color":"#4B0082"}]

execute store result score temp values run data get entity @s SelectedItem.tag.CustomModelData

execute if score temp values matches 6 run function hp:potions/antidote_to_common_poisons

execute if score temp values matches 47 run function hp:potions/draught_of_living_death

execute if score temp values matches 56 run function hp:potions/essence_of_dittany

execute if score temp values matches 70 run function hp:potions/fluxweed_syrup

execute if score temp values matches 98 run function hp:potions/mixture_of_powdered_silver_and_dittany

execute if score temp values matches 109 run function hp:potions/polyjuice_potion

execute if score temp values matches 129 run function hp:potions/sleeping_draught

execute if score temp values matches 155 run function hp:potions/wolfsbane