execute if block ~ ~ ~ air as @e[type=cat,tag=!animagusAnimal,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tp @s ~ -256 ~
execute if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["catCauldron","transfiguredBlock"]}
execute if block ~ ~ ~ air run setblock ~ ~ ~ cauldron
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/felifors_spell/private/end