scoreboard players set #temp values 1

execute as @e[type=item,sort=nearest,distance=..0.2,nbt={Item:{Count:1b,tag:{Ingredient:1b}}},limit=1] run function hp:entities/cauldron/get_owner

function hp:potions/evaluate_brew

execute if score $closestArrayIndex potionMath matches -1 as @a[tag=cauldronTarget] run function hp:items/equipment/phial_glass

execute if score $closestArrayIndex potionMath matches 0.. run advancement grant @a[tag=cauldronTarget] only hp:pack/potions/potion_maker
execute if score $closestArrayIndex potionMath matches 0.. run scoreboard players add @a[tag=cauldronTarget] potionCount 1

scoreboard players operation @s potionMath = $closestArrayDistance potionMath
execute store result storage hp:potion Quality int 1 run scoreboard players get @s potionMath

scoreboard players add $closestArrayIndex potionMath 1
execute if score $closestArrayIndex potionMath matches 11 run loot spawn ~ ~ ~ loot hp:potions/antidote_to_common_poisons
execute if score $closestArrayIndex potionMath matches 48 run loot spawn ~ ~ ~ loot hp:potions/cure_for_boils
execute if score $closestArrayIndex potionMath matches 65 run loot spawn ~ ~ ~ loot hp:potions/draught_of_living_death
execute if score $closestArrayIndex potionMath matches 78 run loot spawn ~ ~ ~ loot hp:potions/essence_of_dittany
execute if score $closestArrayIndex potionMath matches 78 run tag @e[type=item,sort=nearest,limit=1] add dontAdd
execute if score $closestArrayIndex potionMath matches 94 run loot spawn ~ ~ ~ loot hp:potions/fluxweed_syrup
execute if score $closestArrayIndex potionMath matches 96 run loot spawn ~ ~ ~ loot hp:potions/forgetfulness_potion
execute if score $closestArrayIndex potionMath matches 135 run loot spawn ~ ~ ~ loot hp:potions/mixture_of_powdered_silver_and_dittany
execute if score $closestArrayIndex potionMath matches 152 run loot spawn ~ ~ ~ loot hp:potions/polyjuice_potion
execute if score $closestArrayIndex potionMath matches 194 run loot spawn ~ ~ ~ loot hp:potions/sleeping_draught
execute if score $closestArrayIndex potionMath matches 207 run loot spawn ~ ~ ~ loot hp:potions/syrup_of_hellebore
execute if score $closestArrayIndex potionMath matches 207 run tag @e[type=item,sort=nearest,limit=1] add dontAdd
execute if score $closestArrayIndex potionMath matches 228 run loot spawn ~ ~ ~ loot hp:potions/wolfsbane

tag @a[tag=cauldronTarget] remove cauldronTarget

data modify entity @s HandItems[0].tag.display.color set value 4159204
data remove entity @s ArmorItems[3].tag.SpecialUUID
data remove entity @s ArmorItems[3].tag.Name
data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
data modify entity @s ArmorItems[3].tag.Potion set value [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
scoreboard players set @s values 0