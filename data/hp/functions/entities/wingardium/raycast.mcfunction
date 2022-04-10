scoreboard players remove temp values 1
execute if score temp values matches 1.. if block ~ ~ ~ air if block ~ ~1 ~ air positioned ^ ^ ^0.6 run function hp:entities/wingardium/raycast
execute if score temp values matches 1.. unless block ~ ~ ~ air unless block ~ ~1 ~ air positioned ^ ^ ^-.9 run tp @s ~ ~ ~
execute if score temp values matches 1.. if block ~ ~ ~ air unless block ~ ~1 ~ air positioned ^ ^ ^-.9 run tp @s ~ ~ ~
execute if score temp values matches 1.. unless block ~ ~ ~ air if block ~ ~1 ~ air positioned ^ ^ ^-.9 run tp @s ~ ~ ~
