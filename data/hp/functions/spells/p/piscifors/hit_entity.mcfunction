summon cod ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Team:"noCollision",DeathLootTable:"null",NoAI:1b,CanPickUpLoot:0b,Owner:[I;0,0,0,0],Type:"red",Tags:["transfigurationAnimal","new"],CustomName:'{"text":"Fish"}'}
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run scoreboard players operation @e[type=cod,tag=transfigurationAnimal,tag=new] UID = @s UID
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add transfigured
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s transfigureTimer 60
execute as @a[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 at @s run particle dust 1 1 1 2 ~ ~1 ~ 0.25 .5 0.25 1 100
tag @e[type=cod,tag=transfigurationAnimal,tag=new] remove new
execute if entity @s[type=area_effect_cloud] run function hp:spells/p/piscifors/private/end