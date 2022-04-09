scoreboard players set temp values 1
scoreboard players set temp2 values 0
execute as @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] run function hp:entities/cauldron/uuid
execute as @a run function hp:entities/cauldron/get_owner


execute store success score temp values run data modify storage hp:potions Empty set from entity @s ArmorItems[3].tag.Potion
execute if score temp values matches 0 run scoreboard players set temp2 values 1
execute if score temp values matches 0 as @a[tag=cauldronTarget] run function hp:items/equipment/phial_glass

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions AntidoteToCommonPoisons set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=cauldronTarget] run function hp:items/potion/antidote_to_common_poisons


execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions CureForBoils set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=cauldronTarget] run function hp:items/potion/cure_for_boils

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions SleepingDraught set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=cauldronTarget] run function hp:items/potion/sleeping_draught

execute as @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] run kill @s

execute if score temp2 values matches 0 as @a[tag=cauldronTarget] run function hp:items/equipment/phial_glass

tag @a remove cauldronTarget
function hp:potions/reset_potion_storage

data modify entity @s ArmorItems[3].tag.CustomModelData set value 8
data modify entity @s ArmorItems[3].tag.Potion set value [9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]
scoreboard players set @s values 0