scoreboard players add @s deaths 0
scoreboard players add @s spellCount 0

tellraw @s ["","Player ID: ",{"score":{"name":"@s","objective":"UID"}}]
tellraw @s ["",{"text":"Deaths ","color":"dark_gray"},"☠: ",{"score":{"name":"@s","objective":"deaths"}}]
tellraw @s ["",{"text":"Spells cast","color":"light_purple"},": ",{"score":{"name":"@s","objective":"spellCount"}}]

scoreboard players set @s player 0