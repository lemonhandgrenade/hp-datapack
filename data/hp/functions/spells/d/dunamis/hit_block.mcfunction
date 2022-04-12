execute if block ~ ~ ~ #minecraft:doors run particle poof ~ ~ ~ 0 0 0 0 10
scoreboard players set temp values 0
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=false] positioned ~ ~ ~ run function hp:spells/_blocks/open_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=false] positioned ~ ~-1 ~ run function hp:spells/_blocks/open_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=true] positioned ~ ~ ~ run function hp:spells/_blocks/close_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=true] positioned ~ ~-1 ~ run function hp:spells/_blocks/close_door
function hp:spells/d/dunamis/private/end