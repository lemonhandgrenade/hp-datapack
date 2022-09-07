execute store result score temp values run data get entity @s SelectedItem.tag.CustomModelData
clear @s flowering_azalea_leaves{Plant:1b}

tellraw @s[tag=debug] ["",{"text":"Plant ID: ","color":"#4B0082"},{"score":{"name":"temp","objective":"values"},"color":"#4B0082"}]

execute if score temp values matches 303 run function hp:items/ingredients/fluxweed
execute if score temp values matches 303 run function hp:items/ingredients/fluxweed
execute if score temp values matches 303 run function hp:items/seeds/fluxweed

execute if score temp values matches 433 run function hp:items/ingredients/knotgrass
execute if score temp values matches 433 run function hp:items/ingredients/knotgrass
execute if score temp values matches 433 run function hp:items/seeds/knotgrass

advancement revoke @s only hp:harvest