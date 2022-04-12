tellraw @s ["","Player ID: ",{"score":{"name":"@s","objective":"UID"}}]
tellraw @s ["",{"text":"Deaths ","color":"dark_gray"},"☠: ",{"score":{"name":"@s","objective":"deaths"}}]

scoreboard players set @s player 0