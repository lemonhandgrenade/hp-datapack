effect give @s minecraft:instant_damage 1 30 true
function hp:player/injuries/stuck

scoreboard players remove @s cruciatusCurse 1

execute if score @s cruciatusCurse matches ..0 run tag @s remove crucio