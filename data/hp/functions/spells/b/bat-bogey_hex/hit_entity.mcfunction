execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s anchored eyes positioned ^ ^ ^0.2 run summon bat ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Team:"noCollision",Health:1f,Tags:["spellEntity"],CustomName:'{"text":"Bat Bogey"}'}
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s anchored eyes positioned ^ ^ ^0.2 run summon bat ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Team:"noCollision",Health:1f,Tags:["spellEntity"],CustomName:'{"text":"Bat Bogey"}'}
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s anchored eyes positioned ^ ^ ^0.2 run summon bat ~ ~ ~ {Silent:1b,CustomNameVisible:0b,Team:"noCollision",Health:1f,Tags:["spellEntity"],CustomName:'{"text":"Bat Bogey"}'}
execute if entity @s[type=area_effect_cloud] run function hp:spells/b/bat-bogey_hex/private/end