summon frog ~ ~ ~ {NoAI:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"noCollision",variant:"minecraft:cold",Tags:["animagusCreature","new"],CustomName:'{"text":"Tree Frog"}'}
scoreboard players operation @e[type=frog,tag=animagusCreature,tag=new] UID = @s UID
tag @e[type=frog,tag=animagusCreature,tag=new] remove new