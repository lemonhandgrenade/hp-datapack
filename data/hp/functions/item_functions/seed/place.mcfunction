tellraw @s[tag=debug] ["",{"text":"Placing: ","color":"#4B0082"},{"nbt":"Tags","entity":"@e[type=marker,name=seed,sort=nearest,limit=1]","interpret":true,"color":"#4B0082"}]
execute as @e[type=marker,name=seed,sort=nearest,limit=1] at @s run function hp:item_functions/seed/plant
scoreboard players add @e[type=marker,name=seed,sort=nearest,limit=1] plantState 0
advancement revoke @s only hp:seed