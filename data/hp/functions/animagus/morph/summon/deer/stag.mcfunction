execute if score resourcepackMobs settings matches 0 run summon horse ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,Team:"noCollision",NoAI:1b,Tame:1b,Variant:3,Tags:["animagusCreature","new"],CustomName:'{"text":"Stag"}',ArmorItem:{}}
execute if score resourcepackMobs settings matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,CustomNameVisible:0b,Team:"noCollision",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["animagusCreature","new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:2130}}],CustomName:'{"text":"Stag"}'}

execute if score resourcepackMobs settings matches 0 run scoreboard players operation @e[type=horse,tag=animagusCreature,tag=new] UID = @s UID
execute if score resourcepackMobs settings matches 0 run scoreboard players operation @e[type=horse,tag=animagusCreature,tag=new] animagusID = @s animagusID

execute if score resourcepackMobs settings matches 1 run scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] UID = @s UID
execute if score resourcepackMobs settings matches 1 run scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] animagusID = @s animagusID

execute if score resourcepackMobs settings matches 0 run tag @e[type=horse,tag=animagusCreature,tag=new] remove new
execute if score resourcepackMobs settings matches 1 run tag @e[type=armor_stand,tag=animagusCreature,tag=new] remove new