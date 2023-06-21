execute as @e[type=item,tag=spellHit] run particle dust_color_transition 1 0 1 2 0 1 0 ~ ~ ~ 0 0 0 0 10
execute as @e[type=item,tag=spellHit] run data modify entity @s Item.tag.OwnerUUID set from entity @s UUID
function hp:spells/_base/private/end