execute as @e[type=armor_stand,tag=candleLight,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run kill @s
execute if block ~ ~ ~ candle run setblock ~ ~ ~ air
summon rabbit ~ ~ ~ {CustomNameVisible:0b,DeathLootTable:"hp:candle",CanPickUpLoot:0b,Health:1f,RabbitType:0,CustomName:'{"text":"Purple Rabbit"}',Attributes:[{Name:generic.max_health,Base:1}]}
execute if entity @s[type=area_effect_cloud] run function hp:spells/c/candle_to_purple_rabbit_spell/private/end