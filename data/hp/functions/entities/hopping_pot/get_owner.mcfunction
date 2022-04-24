execute store result score 0 UID run data get entity @s UUID[0]
execute store result score 1 UID run data get entity @s UUID[1]
execute store result score 2 UID run data get entity @s UUID[2]
execute store result score 3 UID run data get entity @s UUID[3]

execute if score #uuid0 values = 0 UID if score #uuid1 values = 1 UID if score #uuid2 values = 2 UID if score #uuid3 values = 3 UID run tag @s add hoppingPotTarget