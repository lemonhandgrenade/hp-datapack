execute rotated as @s positioned 0 0 0 align xyz run summon arrow ^ ^ ^1 {Owner:[I;1,1,1,1],Tags:["new","spellEntity","conjuredEntity","level1"]}
execute as @e[type=arrow,tag=new] store result score @s X run data get entity @s Pos[0] 1500
execute as @e[type=arrow,tag=new] store result score @s Y run data get entity @s Pos[1] 1500
execute as @e[type=arrow,tag=new] store result score @s Z run data get entity @s Pos[2] 1500
execute at @s anchored eyes run tp @e[type=arrow,tag=new] ^ ^ ^
execute as @e[type=arrow,tag=new] store result entity @s Motion[0] double .001 run scoreboard players get @s X
execute as @e[type=arrow,tag=new] store result entity @s Motion[1] double .001 run scoreboard players get @s Y
execute as @e[type=arrow,tag=new] store result entity @s Motion[2] double .001 run scoreboard players get @s Z
tag @e[type=arrow,tag=new,tag=spellEntity,tag=conjuredEntity] remove new



