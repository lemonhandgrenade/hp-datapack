execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] run function hp:inv/store_potion
advancement revoke @s only hp:drink_potion

execute store result score temp values run data get entity @s SelectedItem.tag.CustomModelData

execute if score temp values matches 6 run function hp:potions/antidote_to_common_poisons

execute if score temp values matches 128 run function hp:potions/sleeping_draught
