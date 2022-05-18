## Reset Motion
tp @s ~ ~0.2 ~
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Marker:1b,Tags:["motionStop"]}
tp @e[tag=motionStop] ~ ~ ~ ~ ~
tp @s @e[tag=motionStop,limit=1,sort=nearest]

tellraw @s[tag=debug] ["Motion X: ", {"score":{"name":"@s","objective":"motionX"}}]
tellraw @s[tag=debug] ["Motion Y: ", {"score":{"name":"@s","objective":"motionY"}}]
tellraw @s[tag=debug] ["Motion Z: ", {"score":{"name":"@s","objective":"motionZ"}}]



## Apply Levitation
execute unless score @s motionY matches 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["yMotionApply"],Particle:"minecraft:block minecraft:air",ReapplicationDelay:0,Age:-1,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:2,WaitTime:0,Effects:[{Id:25b,Amplifier:10b,Duration:200,ShowParticles:0b,ShowIcon:0b,Ambient:1b},{Id:27b,Amplifier:38b,Duration:200,ShowParticles:0b,ShowIcon:0b,Ambient:1b}]}

## Calc Levitation Duration
function hp:player/motion/vertical/effect_calc
function hp:player/motion/vertical/apply_effect

## Reset y Motion
scoreboard players set @s motionY 0

## Calc horizontal
function hp:player/motion/horizontal/motion

tag @s add motionEffected