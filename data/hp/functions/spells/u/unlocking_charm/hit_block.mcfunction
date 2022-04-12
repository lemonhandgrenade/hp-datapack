scoreboard players set temp values 0
execute align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=slime,tag=Level3,distance=..0.5] run scoreboard players set temp values 1
tp @e[type=slime,tag=lockingSlime,tag=Level1,distance=..1.2] ~ -128 ~
execute positioned ~ ~-128 ~ run kill @e[type=slime,tag=lockingSlime,tag=Level1,distance=..1.2]
tp @e[type=slime,tag=lockingSlime,tag=Level2,distance=..1.2] ~ -128 ~
execute positioned ~ ~-128 ~ run kill @e[type=slime,tag=lockingSlime,tag=Level2,distance=..1.2]
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=false] positioned ~ ~ ~ run function hp:spells/_blocks/open_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=false] positioned ~ ~-1 ~ run function hp:spells/_blocks/open_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=lower,open=true] positioned ~ ~ ~ run function hp:spells/_blocks/close_door
execute if score temp values matches 0 if block ~ ~ ~ #minecraft:doors[half=upper,open=true] positioned ~ ~-1 ~ run function hp:spells/_blocks/close_door
function hp:spells/u/unlocking_charm/private/end