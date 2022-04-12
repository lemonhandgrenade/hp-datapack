
execute if entity @s[tag=!cantSpeak,tag=!lumosMaxima,tag=!wandLightingCharm] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Lumos Maxima"]
execute if entity @s[tag=!cantSpeak,tag=lumosMaxima] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Nox"]
execute if entity @s[tag=!cantSpeak,tag=wandLightingCharm] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Nox"]

scoreboard players set temp values 0
execute if entity @s[tag=lumosMaxima] run scoreboard players set temp values 1
execute if entity @s[tag=wandLightingCharm] run scoreboard players set temp values 1

execute if score temp values matches 0 run tag @s add lumosMaxima
execute if score temp values matches 1 run tag @s remove lumosMaxima
execute if score temp values matches 1 run tag @s remove wandLightingCharm