scoreboard players operation temp values = @s UID
scoreboard players add temp values 1

tellraw @s ["","Player ID: ",{"score":{"name":"temp","objective":"values"}}]
tellraw @s ["",{"text":"Deaths ","color":"dark_gray"},"☠: ",{"score":{"name":"@s","objective":"deaths"}}]

scoreboard players set @s player 0