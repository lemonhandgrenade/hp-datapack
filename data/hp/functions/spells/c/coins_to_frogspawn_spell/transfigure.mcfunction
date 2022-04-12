



execute as @e[type=item,nbt={Item:{tag:{Galleon:1b,Real:1b,Money:1b}}},dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run summon rabbit ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,Team:"noName",DeathLootTable:"hp:money/galleon",Health:1f,RabbitType:0,CustomName:'{"text":"Green Frog"}',Attributes:[{Name:generic.max_health,Base:1}]}
execute as @e[type=item,nbt={Item:{tag:{Sickle:1b,Real:1b,Money:1b}}},dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run summon rabbit ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,Team:"noName",DeathLootTable:"hp:money/sickle",Health:1f,RabbitType:0,CustomName:'{"text":"Green Frog"}',Attributes:[{Name:generic.max_health,Base:1}]}
execute as @e[type=item,nbt={Item:{tag:{Knut:1b,Real:1b,Money:1b}}},dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run summon rabbit ~ ~ ~ {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:0b,CustomNameVisible:0b,Team:"noName",DeathLootTable:"hp:money/knut",Health:1f,RabbitType:0,CustomName:'{"text":"Green Frog"}',Attributes:[{Name:generic.max_health,Base:1}]}

execute as @e[type=item,nbt={Item:{tag:{Real:1b,Money:1b}}},dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run kill @s

#summon rabbit ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"hp:candle",CanPickUpLoot:0b,Health:1f,RabbitType:0,CustomName:'{"text":"Purple Rabbit"}',Attributes:[{Name:generic.max_health,Base:1}]}
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/coins_to_frogspawn_spell/private/end