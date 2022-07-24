execute as @e[type=zombie,tag=werewolf] if score @s UID = #current UID run tag @s add wTemp

effect give @s strength 1 1 true
effect give @s speed 1 1 true
effect give @s jump_boost 1 0 true
effect give @s resistance 1 1 true

scoreboard players operation @s X = @s motionX
scoreboard players operation @s Z = @s motionZ

execute store result score @s motionX run data get entity @s Pos[0] 100
execute store result score @s motionZ run data get entity @s Pos[2] 100

scoreboard players operation @s X -= @s motionX
scoreboard players operation @s Z -= @s motionZ

scoreboard players operation @s[scores={X=1..}] X *= -1 values
scoreboard players operation @s[scores={Z=..-1}] Z *= -1 values

scoreboard players operation @s X *= @s X
scoreboard players operation @s Z *= @s Z

tellraw @s[tag=debug] [{"text":"X","color":"#4B0082"},{"score":{"name":"@s","objective":"X"},"color":"#4B0082"}]
tellraw @s[tag=debug] [{"text":"Z","color":"#4B0082"},{"score":{"name":"@s","objective":"Z"},"color":"#4B0082"}]
tellraw @s[tag=debug] [{"text":"Out Vec:","color":"#4B0082"},{"score":{"name":"@s","objective":"Y"},"color":"#4B0082"}]

## Y acts as final vector
scoreboard players operation @s Y = @s X
scoreboard players operation @s Y += @s Z

data merge entity @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3,tag=!noAI,limit=1] {Invulnerable:1b}
data merge entity @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3,tag=!noAI,limit=1] {NoAI:1b}
tag @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3,tag=!noAI] add noAI

execute if score @s Y matches 1.. run item replace entity @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3] armor.head with minecraft:heart_of_the_sea{CustomModelData:1141}
execute if score @s Y matches 1200.. run item replace entity @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3] armor.head with minecraft:heart_of_the_sea{CustomModelData:1142}
execute if score @s Y matches ..0 run item replace entity @e[type=zombie,tag=werewolf,tag=wTemp,distance=..3] armor.head with minecraft:heart_of_the_sea{CustomModelData:1140}

execute at @s rotated as @s run tp @e[type=zombie,tag=werewolf,tag=wTemp] ~ ~ ~ ~ ~
tag @e[type=zombie,tag=werewolf,tag=wTemp] remove wTemp