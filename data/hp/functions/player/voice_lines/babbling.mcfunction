execute store result score temp values run loot spawn 0 0 0 loot hp:rng/rng3

execute if score temp values matches 1 at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> baa"]
execute if score temp values matches 2 at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> bah"]
execute if score temp values matches 3 at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> blab"]