execute store result score #rng3 values run random value 1..3

execute if score #rng3 values matches 1 run give @s chain_command_block{display:{Name:'{"text":"Peony Bouquet","italic":"false","color":"white"}'},CustomModelData:2880,conjuredItem:1b} 1
execute if score #rng3 values matches 2 run give @s chain_command_block{display:{Name:'{"text":"Rose Bouquet","italic":"false","color":"white"}'},CustomModelData:2881,conjuredItem:1b} 1
execute if score #rng3 values matches 3 run give @s chain_command_block{display:{Name:'{"text":"Wild Bouquet","italic":"false","color":"white"}'},CustomModelData:2882,conjuredItem:1b} 1


execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Orchideous"]