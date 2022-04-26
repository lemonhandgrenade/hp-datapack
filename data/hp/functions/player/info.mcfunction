scoreboard players add @s deaths 0
scoreboard players add @s spellCount 0

tellraw @s ["","Player ID: ",{"score":{"name":"@s","objective":"UID"}}]
tellraw @s ["",{"text":"Deaths ","color":"dark_gray"},"☠: ",{"score":{"name":"@s","objective":"deaths"}}]
tellraw @s ["",{"text":"Spells cast","color":"light_purple"},": ",{"score":{"name":"@s","objective":"spellCount"}}]
tellraw @s[scores={fearID=1}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Acromantulas"}]
tellraw @s[scores={fearID=2}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Banshees"}]
tellraw @s[scores={fearID=3}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Clowns"}]
tellraw @s[scores={fearID=4}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Death"}]
tellraw @s[scores={fearID=5}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Dementors"}]
tellraw @s[scores={fearID=6}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Disembodied body parts"}]
tellraw @s[scores={fearID=7}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Dragons"}]
tellraw @s[scores={fearID=8}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Giant Snakes"}]
tellraw @s[scores={fearID=9}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Moon"}]
tellraw @s[scores={fearID=10}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Mummys"}]
tellraw @s[scores={fearID=11}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Sharks"}]
tellraw @s[scores={fearID=12}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Vampires"}]
tellraw @s[scores={fearID=13}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Drowning"}]
tellraw @s[scores={fearID=14}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Werewolves"}]
tellraw @s[scores={fearID=15}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Zombies"}]
scoreboard players set @s player 0