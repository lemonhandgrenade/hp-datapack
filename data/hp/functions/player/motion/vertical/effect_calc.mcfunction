scoreboard players set #ul_amp values 38
scoreboard players set @s yMotionTime -1

execute if score @s motionY matches 78.. run scoreboard players set @s yMotionTime -2

#

scoreboard players set #lev_amp values 50

execute if score @s motionY matches 78.. run scoreboard players set #lev_amp values 70
execute if score @s motionY matches 78.. run scoreboard players operation @s motionY -= #max values

execute if score @s motionY matches ..-1 run scoreboard players set #lev_amp values 254

#

scoreboard players operation #lev_amp values += @s motionY