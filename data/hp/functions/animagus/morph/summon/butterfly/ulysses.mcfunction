summon armor_stand ~ ~ ~ {Marker:1b,CustomNameVisible:0b,Team:"noCollision",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["animagusCreature","new"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:2120}}],CustomName:'{"translate":"animagus.hp.butterfly_ulysses"}'}
scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] UID = @s UID
scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] animagusID = @s animagusID
tag @e[type=armor_stand,tag=animagusCreature,tag=new] remove new