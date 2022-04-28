#-Cleansweep-Series--------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=4..6}] store result score broomSpeed X run data get entity @s Motion[0] 3333
execute if entity @s[scores={broomType=4..6}] store result score broomSpeed Y run data get entity @s Motion[1] 2888
execute if entity @s[scores={broomType=4..6}] store result score broomSpeed Z run data get entity @s Motion[2] 3333
#-Comet-140----------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=11}] store result score broomSpeed X run data get entity @s Motion[0] 2666
execute if entity @s[scores={broomType=11}] store result score broomSpeed Y run data get entity @s Motion[1] 2310
execute if entity @s[scores={broomType=11}] store result score broomSpeed Z run data get entity @s Motion[2] 2666
#-Firebolt-----------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=16}] store result score broomSpeed X run data get entity @s Motion[0] 4000
execute if entity @s[scores={broomType=16}] store result score broomSpeed Y run data get entity @s Motion[1] 2989
execute if entity @s[scores={broomType=16}] store result score broomSpeed Z run data get entity @s Motion[2] 4000
#-Moontrimmer--------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=18}] store result score broomSpeed X run data get entity @s Motion[0] 3333
execute if entity @s[scores={broomType=18}] store result score broomSpeed Y run data get entity @s Motion[1] 4000
execute if entity @s[scores={broomType=18}] store result score broomSpeed Z run data get entity @s Motion[2] 3333
#-Nimbus-2000--------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=23}] store result score broomSpeed X run data get entity @s Motion[0] 3333
execute if entity @s[scores={broomType=23}] store result score broomSpeed Y run data get entity @s Motion[1] 2888
execute if entity @s[scores={broomType=23}] store result score broomSpeed Z run data get entity @s Motion[2] 3333
#-Nimbus-2001--------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=24}] store result score broomSpeed X run data get entity @s Motion[0] 3450
execute if entity @s[scores={broomType=24}] store result score broomSpeed Y run data get entity @s Motion[1] 2989
execute if entity @s[scores={broomType=24}] store result score broomSpeed Z run data get entity @s Motion[2] 3450
#-Shooting-Star------------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=26}] store result score broomSpeed X run data get entity @s Motion[0] 2350
execute if entity @s[scores={broomType=26}] store result score broomSpeed Y run data get entity @s Motion[1] 2350
execute if entity @s[scores={broomType=26}] store result score broomSpeed Z run data get entity @s Motion[2] 2350
#-Thunderbolt-VII----------------------------------------------------------------------------------#
execute if entity @s[scores={broomType=31}] store result score broomSpeed X run data get entity @s Motion[0] 4333
execute if entity @s[scores={broomType=31}] store result score broomSpeed Y run data get entity @s Motion[1] 3200
execute if entity @s[scores={broomType=31}] store result score broomSpeed Z run data get entity @s Motion[2] 4333

scoreboard players operation distancePos X += broomSpeed X
scoreboard players operation distancePos Y += broomSpeed Y
scoreboard players operation distancePos Z += broomSpeed Z

scoreboard players operation distancePos Y += 20 values

execute store result entity @s Motion[0] double 0.00025 run scoreboard players get distancePos X
execute store result entity @s Motion[1] double 0.00030 run scoreboard players get distancePos Y
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get distancePos Z