tag @s add this
scoreboard players add system slo_id 1
scoreboard players operation @s slo_id = system slo_id
summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["new","slowcast","patronusCharm","level3"]}
execute if score @s patronusID matches 1 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","patronus","stag","new","patronusCharm"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
execute if score @s patronusID matches 2 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","patronus","owl","new","patronusCharm"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
execute if score @s patronusID matches 3 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","patronus","lion","new","patronusCharm"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
execute if score @s patronusID matches 4 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","patronus","niffler","new","patronusCharm"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
execute if score @s patronusID matches 5 run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["spellEntity","patronus","wolf","new","patronusCharm"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:light_blue_stained_glass",Count:1b}]}
scoreboard players operation @e[type=area_effect_cloud,tag=patronusCharm,tag=new,limit=1] UID = @s UID
scoreboard players operation @e[type=armor_stand,tag=patronusCharm,tag=new,limit=1] UID = @s UID
execute as @e[type=area_effect_cloud,tag=slowcast,tag=patronusCharm,tag=new,limit=1] run function hp:spells/p/patronus_charm/private/setup
tag @s remove this
