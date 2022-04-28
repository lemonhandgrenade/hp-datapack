execute as @a run function hp:player/main


execute if entity @e[type=area_effect_cloud,tag=slowcast] run function hp:spells/main

execute as @e[tag=transfigured] run function hp:transfigure/main

#execute as @e[type=item,tag=!expelled,nbt={OnGround:0b,Item:{tag:{Wand:1b}}}] at @s unless entity @p[x_rotation=90] run function hp:wand/change_spell
execute as @e[tag=spellEntity] at @s run function hp:spells/_entities/main


execute as @e[type=snowball,tag=!quidditchBall,nbt={Item:{tag:{quidditchBall:1b}}}] at @s run function hp:quidditch/found_ball
execute as @e[type=area_effect_cloud,tag=quidditchQuaffle] unless predicate hp:is_riding_snowball at @s run function hp:quidditch/quaffle_landed
execute as @e[type=area_effect_cloud,tag=quidditchItem] unless predicate hp:is_riding_snowball at @s run kill @s

scoreboard players operation #alternate values *= -1 values
scoreboard players add #3 values 1
execute if score #3 values matches 4.. run scoreboard players set #3 values 1

execute as @e[type=armor_stand,tag=broomElytra,tag=broom] at @s run function hp:broom/tp