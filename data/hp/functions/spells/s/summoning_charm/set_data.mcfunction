data merge entity @s[type=item] {PickupDelay:5}

execute store result entity @s Motion[0] double 0.0015 run scoreboard players get temp X
execute store result entity @s Motion[1] double 0.0015 run scoreboard players get temp Y
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get temp Z