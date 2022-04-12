execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,type=item] positioned ~0.99 ~0.99 ~0.99 run tag @s add aviforsItem

execute as @e[tag=aviforsItem] at @s run summon parrot ~ ~ ~ {Health:1f,Attributes:[{Name:generic.max_health,Base:1}],Tags:["aviforsParrot","transfigurationAnimal"],DeathLootTable:null,HandItems:[{},{}],HandDropChances:[1.0f,0.0f]}

execute as @e[type=parrot,tag=aviforsParrot] at @s run data modify entity @s HandItems[0] set from entity @e[dx=0,limit=1,tag=aviforsItem] Item

execute as @e[tag=aviforsItem] at @s run kill @s