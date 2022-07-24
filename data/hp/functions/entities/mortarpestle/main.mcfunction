execute if entity @e[type=item,sort=nearest,distance=..0.2] as @e[type=item,sort=nearest,distance=..0.2] if data entity @s {Item:{Count:1b}} if data entity @s Item.tag.MortarPestle run function hp:entities/mortarpestle/change_item
# execute if score #3 values matches 1 run particle minecraft:dolphin ~ ~.9 ~ 0 0 0 0 0

execute if score #3 values matches 1 if score toolEntityParticles settings matches 1 run particle minecraft:dolphin ~ ~0.9 ~ 0 0 0 0 0
execute if score #3 values matches 1 if score toolEntityParticles settings matches 2 run particle minecraft:mycelium ~ ~0.9 ~ 0 0 0 0 0