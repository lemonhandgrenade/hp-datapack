execute if score resourcepackMobs settings matches 0 run summon bat ~ ~ ~ {CustomNameVisible:0,CustomName:'{"text":"Postman Butterfly"}',Invulnerable:1b,Silent:1b,Tags:["animagusCreature","new"],Team:"noCollision",NoAI:1b}
execute if score resourcepackMobs settings matches 1 run summon armor_stand ~ ~ ~ {CustomNameVisible:0b,Team:"noCollision",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["animagusCreature","new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:2002}}],CustomName:'{"text":"Postman"}'}
execute if score resourcepackMobs settings matches 0 run scoreboard players operation @e[type=bat,tag=animagusCreature,tag=new] UID = @s UID
execute if score resourcepackMobs settings matches 1 run scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] UID = @s UID
execute if score resourcepackMobs settings matches 0 run tag @e[type=bat,tag=animagusCreature,tag=new] remove new
execute if score resourcepackMobs settings matches 1 run tag @e[type=armor_stand,tag=animagusCreature,tag=new] remove new