summon cat ~ ~ ~ {CustomNameVisible:0,CustomName:'{"text":"Red Tabby"}',Invulnerable:1b,CatType:2,Tags:["animagusCreature","new"],Team:"noCollision",NoAI:1b}
scoreboard players operation @e[type=cat,tag=animagusCreature,tag=new] UID = @s UID
scoreboard players operation @e[type=cat,tag=animagusCreature,tag=new] animagusID = @s animagusID
tag @e[type=cat,tag=animagusCreature,tag=new] remove new