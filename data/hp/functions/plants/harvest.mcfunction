execute store result score temp values run data get entity @s SelectedItem.tag.CustomModelData
clear @s flowering_azalea_leaves{Plant:1b}

tellraw @s[tag=debug] ["",{"text":"Plant ID: ","color":"#4B0082"},{"score":{"name":"temp","objective":"values"},"color":"#4B0082"}]

execute if score temp values matches 293 run function hp:items/ingredients/fluxweed
execute if score temp values matches 293 run function hp:items/ingredients/fluxweed
execute if score temp values matches 293 run function hp:items/seeds/fluxweed

execute if score temp values matches 423 run function hp:items/ingredients/knotgrass
execute if score temp values matches 423 run function hp:items/ingredients/knotgrass
execute if score temp values matches 423 run function hp:items/seeds/knotgrass

execute if score temp values matches 503 run function hp:items/ingredients/moly
execute if score temp values matches 503 run function hp:items/seeds/moly

execute if score temp values matches 543 run function hp:items/ingredients/nettle
execute if score temp values matches 543 run function hp:items/ingredients/nettle
execute if score temp values matches 543 run function hp:items/seeds/nettle

execute if score temp values matches 743 run function hp:items/seeds/spiky_bush

execute if score temp values matches 913 run function hp:items/ingredients/wolfsbane
execute if score temp values matches 913 run function hp:items/ingredients/wolfsbane
execute if score temp values matches 913 run function hp:items/seeds/wolfsbane

execute if score temp values matches 923 run function hp:items/ingredients/wormwood
execute if score temp values matches 923 run function hp:items/seeds/wormwood
advancement revoke @s only hp:harvest