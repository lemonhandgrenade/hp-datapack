execute at @s positioned ~ ~0.5 ~ if entity @e[type=item,sort=nearest,distance=..0.5,nbt={Item:{Count:1b,tag:{Ingredient:1b}}}] run function hp:entities/hopping_pot/check_item

execute if predicate hp:player/no_boots run function hp:entities/hopping_pot/time_up

function hp:entities/hopping_pot/anim