execute if entity @s[tag=gougingSpell] at @s if block ~ ~ ~ air run kill @s

execute if score #3 values matches 1 if score repairParticles settings matches 1 run particle minecraft:happy_villager ~ ~.5 ~ 0.275 0.275 0.275 0 5