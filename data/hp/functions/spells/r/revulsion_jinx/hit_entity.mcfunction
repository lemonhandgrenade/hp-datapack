execute as @e[type=#hp:can_hold,predicate=hp:player/holding_item,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run function hp:spells/r/revulsion_jinx/drop
#execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run function hp:spells/r/revulsion_jinx/drop_player
execute if entity @s[type=area_effect_cloud] run function hp:spells/r/revulsion_jinx/private/end