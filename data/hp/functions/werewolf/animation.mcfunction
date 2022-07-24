execute store result score @s X run data get entity @s Motion[0] 100
execute store result score @s Z run data get entity @s Motion[2] 100

scoreboard players operation @s[scores={X=..-1}] X *= -1 values
scoreboard players operation @s[scores={Z=..-1}] Z *= -1 values

## Y acts as final vector
scoreboard players operation @s Y = @s X
scoreboard players operation @s Y += @s Z

execute if score @s Y matches 1.. run item replace entity @s armor.head with minecraft:heart_of_the_sea{CustomModelData:1142}
execute if score @s Y matches ..0 run item replace entity @s armor.head with minecraft:heart_of_the_sea{CustomModelData:1140}


data modify entity @s Rotation[1] set value 0.0f