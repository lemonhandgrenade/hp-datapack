execute as @e[type=item,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run particle dust_color_transition 1 0 1 2 0 1 0 ~ ~ ~ 0 0 0 0 10
execute if entity @e[type=item,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run data modify entity @e[type=item,dx=0,tag=!this,limit=1,sort=nearest] Item.tag.OwnerUUID set from entity @s UUID
function hp:spells/a/anti-theft_charm/private/end