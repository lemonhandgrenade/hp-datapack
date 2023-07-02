execute if score #3 values matches 1 if score toolEntityParticles settings matches 1 run particle minecraft:dolphin ~ ~0.9 ~ 0 0 0 0 0
execute if score #3 values matches 1 if score toolEntityParticles settings matches 2 run particle minecraft:mycelium ~ ~0.9 ~ 0 0 0 0 0

execute at @s positioned ~ ~0.5 ~ if entity @e[type=item,sort=nearest,distance=..0.5,nbt={Item:{Count:1b,tag:{Ingredient:1b}}}] run function hp:entities/hopping_pot/check_item

execute if predicate hp:player/no_boots run function hp:entities/hopping_pot/time_up

function hp:entities/hopping_pot/anim