execute as @e[dx=0,tag=!this,predicate=hp:player/no_helmet] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 at @s run particle dust_color_transition 0.8 0.2 0.3 1 0.6 0 0.8 ~ ~2.1 ~ 0.3 0.2 0.3 0 100
execute as @e[dx=0,tag=!this,predicate=hp:player/no_helmet] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run item replace entity @s armor.head with repeating_command_block{display:{Name:'{"text":"Antlers","color":"white","italic":false}'},HideFlags:1,CustomModelData:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute if entity @s[type=area_effect_cloud] run function hp:spells/a/anteoculatia/private/end