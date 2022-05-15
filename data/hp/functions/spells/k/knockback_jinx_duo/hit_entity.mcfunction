#execute as @a[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add effected
#
#execute positioned as @a[tag=effected] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^-0.2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["knockbackJinxDuoPush","new"]}
#
#scoreboard players operation @e[type=armor_stand,tag=knockbackJinxDuoPush,tag=new,limit=1] UID = @a[tag=effected] UID
#execute as @e[type=armor_stand,tag=knockbackJinxDuoPush,tag=new,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=effected]
#
#tag @e[type=armor_stand,tag=knockbackJinxDuoPush,tag=new,limit=1] remove new
#scoreboard players set @a[tag=effected] anim 30
#scoreboard players set @a[tag=effected] vc 1
#
#tag @a[tag=effected] add knockedBackDuo
#tag @a[tag=effected] add cantSpeak
#tag @a[tag=effected] remove effected

execute rotated as @p[tag=this] run summon minecraft:armor_stand ^ ^ ^1 {Tags:["new"],Invisible:1b,Marker:1b,NoGravity:1b}

execute as @e[tag=new] store result score temp motionX run data get entity @s Pos[0] -200
execute as @e[tag=new] store result score temp motionY run data get entity @s Pos[1] -200
execute as @e[tag=new] store result score temp motionZ run data get entity @s Pos[2] -200

execute as @e[tag=new] at @s rotated as @p[tag=this] run tp @s ^ ^ ^0.3

execute as @e[tag=new] store result score temp2 motionX run data get entity @s Pos[0] -200
execute as @e[tag=new] store result score temp2 motionY run data get entity @s Pos[1] -200
execute as @e[tag=new] store result score temp2 motionZ run data get entity @s Pos[2] -200

execute as @e[tag=new] run scoreboard players operation temp motionX -= temp2 motionX
execute as @e[tag=new] run scoreboard players operation temp motionY -= temp2 motionY
execute as @e[tag=new] run scoreboard players operation temp motionZ -= temp2 motionZ

kill @e[tag=new]

scoreboard players operation @p motionX = temp motionX
scoreboard players operation @p motionY = temp motionY
scoreboard players operation @p motionZ = temp motionZ

execute as @p at @s run function hp:player/motion/launch


execute if entity @s[type=area_effect_cloud] run function hp:spells/k/knockback_jinx_duo/private/end