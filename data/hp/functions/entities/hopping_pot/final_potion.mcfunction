scoreboard players set temp values 1
scoreboard players set temp2 values 0

execute as @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] run function hp:entities/hopping_pot/uuid
execute as @a run function hp:entities/hopping_pot/get_owner

execute store success score temp values run data modify storage hp:potions Empty set from entity @s ArmorItems[3].tag.Potion
execute if score temp values matches 0 run scoreboard players set temp2 values 1
execute if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/equipment/phial_glass

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions AntidoteToCommonPoisons set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/antidote_to_common_poisons
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions CureForBoils set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/cure_for_boils
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions DraughtOfLivingDeath set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/draught_of_living_death
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions EssenceOfDittany set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/essence_of_dittany
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/essence_of_dittany
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions ForgetfulnessPotion set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/forgetfulness_potion
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions MixtureOfPowderedSilverAndDittany set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/mixture_of_powdered_silver_and_dittany
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions Polyjuice set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/polyjuice
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions SleepingDraught set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/sleeping_draught
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute unless score temp2 values matches 1 store success score temp values run data modify storage hp:potions Wolfsbane set from entity @s ArmorItems[3].tag.Potion
execute unless score temp2 values matches 1 if score temp values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/potion/wolfsbane
execute unless score temp2 values matches 1 if score temp values matches 0 run scoreboard players set temp2 values 1

execute as @e[type=item,sort=nearest,distance=..0.5,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] run kill @s

execute if score temp2 values matches 0 as @a[tag=hoppingPotTarget] run function hp:items/equipment/phial_glass

execute if score temp2 values matches 1 run advancement grant @a[tag=hoppingPotTarget] only hp:pack/potion
execute if score temp2 values matches 1 run scoreboard players add @a[tag=cauldronTarget] potionCount 1

tag @a remove hoppingPotTarget
function hp:potions/reset_potion_storage

data modify entity @s ArmorItems[3].tag.CustomModelData set value 30
tag @s remove full
data modify entity @s ArmorItems[3].tag.Potion set value [9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]
scoreboard players set @s values 0