summon minecraft:armor_stand ^ ^ ^1 {Tags:["new","ascendio"],Invisible:1b,Marker:1b,NoGravity:1b}

execute as @e[tag=new,tag=ascendio] at @s run function hp:spells/a/ascendio/get_motion

kill @e[tag=new,tag=ascendio]

scoreboard players operation @s motionX = temp motionX
scoreboard players operation @s motionY = temp motionY
scoreboard players operation @s motionZ = temp motionZ

execute at @s run function hp:player/motion/launch