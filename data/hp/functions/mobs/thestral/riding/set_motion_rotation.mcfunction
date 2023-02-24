execute store result score thestralSpeed X run data get entity @s Motion[0] 4820
execute store result score thestralSpeed Y run data get entity @s Motion[1] 3343
execute store result score thestralSpeed Z run data get entity @s Motion[2] 4820

# Rotation
execute at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=pig,tag=thestralPig,limit=1] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute at @s as @e[type=horse,tag=thestral,tag=thestralAI] if score @s thestralID = #current thestralID run tp @s ~ ~ ~

scoreboard players operation distancePos X += thestralSpeed X
scoreboard players operation distancePos Y += thestralSpeed Y
scoreboard players operation distancePos Z += thestralSpeed Z

scoreboard players operation distancePos Y -= thestralSpeed Y

execute store result entity @s Motion[0] double 0.00025 run scoreboard players get distancePos X
execute if score #current selectedSlot matches 5.. store result entity @s Motion[1] double 0.00080 run scoreboard players get distancePos Y
execute if score #current selectedSlot matches ..4 if score distancePos Y matches ..0 store result entity @s Motion[1] double 0.00080 run scoreboard players get distancePos Y
execute store result entity @s Motion[2] double 0.00025 run scoreboard players get distancePos Z