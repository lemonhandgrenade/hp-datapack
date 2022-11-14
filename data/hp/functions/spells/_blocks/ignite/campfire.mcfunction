scoreboard players set #temp values 0
scoreboard players set temp values 0
execute if block ~ ~ ~ #minecraft:campfires[facing=north] run scoreboard players set temp values 1
execute if block ~ ~ ~ #minecraft:campfires[facing=south] run scoreboard players set temp values 2
execute if block ~ ~ ~ #minecraft:campfires[facing=east] run scoreboard players set temp values 3
execute if block ~ ~ ~ #minecraft:campfires[facing=west] run scoreboard players set temp values 4

execute if block ~ ~ ~ #minecraft:campfires[signal_fire=true] run scoreboard players set #temp values 1

execute if block ~ ~ ~ campfire run function hp:spells/_blocks/ignite/campfire/default
execute if block ~ ~ ~ soul_campfire run function hp:spells/_blocks/ignite/campfire/soul