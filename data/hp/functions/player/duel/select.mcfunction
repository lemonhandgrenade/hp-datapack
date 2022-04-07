scoreboard players operation #target UID = @s duel

scoreboard players set temp values 0
execute as @a if score @s UID = #target UID run scoreboard players set temp values 1

execute if score temp values matches 0 run tellraw @s ["",{"text":"Error: ","bold":true,"color":"dark_red"},{"text":"Either the player's ID you entered is incorrect or that player is not online.","color":"gold"}]

execute if score temp values matches 1 run function hp:player/duel/is_valid

scoreboard players set @s duel 0