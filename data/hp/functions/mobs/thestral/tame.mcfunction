scoreboard players operation #current thestralID = @s thestralID
tag @s add tamed
particle minecraft:heart ~ ~1.5 ~ 0.75 0.5 0.75 1 10
execute as @e[type=pig,tag=thestral,tag=thestralPig,distance=..2] if score @s thestralID = #current thestralID run tag @s add tamed