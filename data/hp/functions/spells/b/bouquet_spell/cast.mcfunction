execute store result score temp values run loot spawn 0 0 0 loot hp:rng/rng3

execute if score temp values matches 1 run give @s heart_of_the_sea{display:{Name:'{"text":"Peony Bouquet","italic":"false","color":"white"}'},CustomModelData:100,conjuredItem:1b} 1
execute if score temp values matches 2 run give @s heart_of_the_sea{display:{Name:'{"text":"Rose Bouquet","italic":"false","color":"white"}'},CustomModelData:101,conjuredItem:1b} 1
execute if score temp values matches 3 run give @s heart_of_the_sea{display:{Name:'{"text":"Wild Bouquet","italic":"false","color":"white"}'},CustomModelData:102,conjuredItem:1b} 1


execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Orchideous"]