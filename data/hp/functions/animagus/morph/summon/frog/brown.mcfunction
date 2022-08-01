summon frog ~ ~ ~ {NoAI:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"noCollision",variant:"minecraft:temperate",Tags:["animagusCreature","new"],CustomName:'{"text":"Brown Frog"}'}
scoreboard players operation @e[type=frog,tag=animagusCreature,tag=new] UID = @s UID
scoreboard players operation @e[type=frog,tag=animagusCreature,tag=new] animagusID = @s animagusID
tag @e[type=frog,tag=animagusCreature,tag=new] remove new