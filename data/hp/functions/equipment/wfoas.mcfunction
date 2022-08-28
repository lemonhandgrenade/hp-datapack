tellraw @s[tag=debug] {"nbt":"SelectedItem.tag.CustomModelData","entity":"@s","color":"#4B0082"}

execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] store result score #itemID values run data get entity @s SelectedItem.tag.CustomModelData
execute if entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",Slot:-106b}]}] store result score #itemID values run data get entity @s Inventory[{Slot:-106b}].tag.CustomModelData

execute at @s if score #itemID values matches 1 run function hp:equipment/hand_of_glory
execute at @s if score #itemID values matches 20 run function hp:equipment/deluminator
execute at @s if score #itemID values matches 21 run function hp:equipment/deluminator_close
execute at @s if score #itemID values matches 1000 run function hp:equipment/frog_card
scoreboard players set @s wfoas 0