scoreboard players set temp values 0
execute if entity @s[tag=wingardium] run scoreboard players set temp values 1

execute if score temp values matches 0 run tag @s add wingardium
execute if score temp values matches 0 run tag @s add flyingEntity
execute if score temp values matches 0 run tag @s add specialEntity

execute if score temp values matches 1 run tag @s remove wingardium
execute if score temp values matches 1 run tag @s remove flyingEntity
execute if score temp values matches 1 run tag @s remove specialEntity

tellraw @a {"score":{"name":"temp","objective":"values"}}
say hi