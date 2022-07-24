scoreboard players set temp values 0
execute if entity @s[tag=wingardium] run scoreboard players set temp values 1

execute if score temp values matches 0 run tag @s add wingardium
execute if score temp values matches 0 run tag @s add flyingEntity
execute if score temp values matches 0 run tag @s add specialEntity
execute if score temp values matches 0 run data merge entity @s {NoGravity:1b}
execute if score temp values matches 1 run data merge entity @s[type=item] {PickupDelay:40}

execute if score temp values matches 1 run tag @s remove wingardium
execute if score temp values matches 1 run tag @s remove flyingEntity
execute if score temp values matches 1 run tag @s remove specialEntity
execute if score temp values matches 1 run data merge entity @s {NoGravity:0b}
execute if score temp values matches 1 run data merge entity @s[type=item] {PickupDelay:40}