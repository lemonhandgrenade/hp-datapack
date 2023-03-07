tag @s remove animagus
tag @s remove lycanthropySick
tag @s add werewolf

execute at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 2
execute at @s run playsound minecraft:entity.wolf.whine player @a ~ ~ ~ 1 1.1
effect give @s minecraft:blindness 3 30

advancement grant @s only hp:pack/mobs/werewolf
scoreboard players reset @s lycanthropy

tellraw @s ["",{"text":"+----------------------------+\n","color":"#001153"},{"text":" You have become a werewolf\n Each full moon you will transform\n into a werewolf's form"},{"text":"\n+----------------------------+","color":"#001153"}]