scoreboard players operation temp values = @s colourChangingCharm
tellraw @a {"score":{"name":"temp","objective":"values"}}
execute if entity @s[tag=!end] as @a[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/c/colour_changing_charm/select
tag @s add end
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/colour_changing_charm/private/end