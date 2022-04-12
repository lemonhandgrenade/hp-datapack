execute as @e[dx=0,tag=!this,tag=morphed,tag=apparition] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove morphed
execute as @e[dx=0,tag=!this,tag=apparition] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove apparition
function hp:spells/a/anti-disapparition_jinx/private/end