execute as @e[tag=broom,limit=3,sort=nearest,distance=..2] at @s rotated as @p run tp @s ~ ~ ~ ~ ~

execute store result score @s sloID run data get entity @s Rotation[1] 100

scoreboard players set @s[scores={sloID=4000..}] sloID 4000
scoreboard players set @s[scores={sloID=..-5000}] sloID -5000

execute as @e[type=armor_stand,tag=broom,tag=broomVisual,limit=1,sort=nearest,distance=..2] unless score @s broomType matches 16 unless score @s broomType matches 3 store result entity @s Pose.Head[0] float 0.01 run scoreboard players get @p sloID
execute  