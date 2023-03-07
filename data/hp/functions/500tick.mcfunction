schedule function hp:500tick 500t

execute as @e[tag=forceBaby] run data merge entity @s {Age:-2147483647}
execute as @e[tag=forceInvis] run effect give @s invisibility 10000 1 true