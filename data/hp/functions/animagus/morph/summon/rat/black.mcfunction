summon armor_stand ~ ~ ~ {Marker:1b,DisabledSlots:4144959,Invisible:1b,CustomNameVisible:0b,Team:"noCollision",Silent:1b,Invulnerable:1b,Small:1b,Tags:["animagusCreature","new"],Pose:{Head:[180f,180f,0f]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2094302478,396578669,-1130058083,-2030330774],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzBmODc3YThkYjBjNzMwYmI4YWJiMjE4NWFlODBjYjZmYjkzZTdiZGM0NTVlZGUwMDgyNzRjMzE4NTg1ZDFkMSJ9fX0="}]}}}}],CustomName:'{"text":"Black Rat"}'}
scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] UID = @s UID
scoreboard players operation @e[type=armor_stand,tag=animagusCreature,tag=new] animagusID = @s animagusID
tag @e[type=armor_stand,tag=animagusCreature,tag=new] remove new