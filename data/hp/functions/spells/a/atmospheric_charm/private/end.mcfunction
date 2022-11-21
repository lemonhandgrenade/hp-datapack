scoreboard players reset @s sloID
scoreboard players reset @s sloDst
scoreboard players reset @s sloDstPer

execute if score @s values matches 0 run summon armor_stand ~ ~ ~ {Tags:["spellEntity","cloud","weather"],NoGravity:1b}
execute if score @s values matches 1 run summon armor_stand ~ ~ ~ {Tags:["spellEntity","rain","weather"],NoGravity:1b}

scoreboard players reset @s values
kill @s
