execute if score left values < right values run data modify entity @s ArmorItems[3].tag.CustomModelData set value 3
execute if score left values > right values run data modify entity @s ArmorItems[3].tag.CustomModelData set value 2
execute if score left values = right values run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1