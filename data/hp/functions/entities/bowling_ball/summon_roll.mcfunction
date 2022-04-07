summon armor_stand ~ ~ ~ {Invisible:1b,Team:"noCollision",Small:1b,Tags:["bowlingBall","new"],ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{display:{Name:'{"text":"Bowling Ball","color":"white","italic":false}'},CustomModelData:200,bowlingBall:1b,specialEntity:1b}}]}
execute store result score temp X run data get entity @s Motion[0] 100
scoreboard players operation temp X *= 2 values
execute store result score temp Y run data get entity @s Motion[1] 100
scoreboard players operation temp Y *= 2 values
execute store result score temp Z run data get entity @s Motion[2] 100
scoreboard players operation temp Z *= 2 values

#data modify entity @e[type=armor_stand,tag=bowlingBall,tag=new,limit=1] Motion set from entity @s Motion
execute store result entity @e[type=armor_stand,tag=bowlingBall,tag=new,limit=1] Motion[0] double 0.05 run scoreboard players get temp X
execute store result entity @e[type=armor_stand,tag=bowlingBall,tag=new,limit=1] Motion[1] double 0.05 run scoreboard players get temp Y
execute store result entity @e[type=armor_stand,tag=bowlingBall,tag=new,limit=1] Motion[2] double 0.05 run scoreboard players get temp Z
tag @e[type=armor_stand,tag=bowlingBall,tag=new,limit=1] remove new

kill @s