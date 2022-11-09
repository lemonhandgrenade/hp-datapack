execute rotated as @s positioned 0 0 0 align xyz run summon snowball ^ ^ ^.6 {NoGravity:1b,Silent:1b,Tags:["new","specialBall","spellEntity","airMod","apparitionBall"],Passengers:[{id:"minecraft:item",Silent:1b,PickupDelay:-1,Tags:["new","apparitionBallItem"],Item:{id:"minecraft:polished_blackstone_button",Count:1b,tag:{CustomModelData:1}}}],Item:{id:"minecraft:polished_blackstone_button",Count:1b,tag:{CustomModelData:1}}}
execute as @e[type=snowball,tag=new] store result score @s X run data get entity @s Pos[0] 2000
execute as @e[type=snowball,tag=new] store result score @s Y run data get entity @s Pos[1] 2000
execute as @e[type=snowball,tag=new] store result score @s Z run data get entity @s Pos[2] 2000
execute at @s anchored eyes run tp @e[type=snowball,tag=new] ~ ~1.41 ~ ~ ~
execute as @e[type=snowball,tag=new] run tp @s @s
execute as @e[type=snowball,tag=new] store result entity @s Motion[0] double .001 run scoreboard players get @s X
execute as @e[type=snowball,tag=new] store result entity @s Motion[1] double .001 run scoreboard players get @s Y
execute as @e[type=snowball,tag=new] store result entity @s Motion[2] double .001 run scoreboard players get @s Z
scoreboard players operation @e[type=snowball,tag=new,tag=spellEntity,tag=apparitionBall] UID = @s UID
scoreboard players operation @e[type=item,tag=new,tag=apparitionBallItem] UID = @s UID
data modify entity @e[type=item,tag=new,tag=apparitionBallItem,limit=1] Rotation set from entity @s Rotation
execute if entity @s[gamemode=survival] run scoreboard players set @e[type=item,tag=new,tag=apparitionBallItem] apparitionTimer 0
execute if entity @s[gamemode=creative] run scoreboard players set @e[type=item,tag=new,tag=apparitionBallItem] apparitionTimer 1
execute if entity @s[gamemode=adventure] run scoreboard players set @e[type=item,tag=new,tag=apparitionBallItem] apparitionTimer 2
execute if entity @s[gamemode=spectator] run scoreboard players set @e[type=item,tag=new,tag=apparitionBallItem] apparitionTimer 3
tag @e[type=snowball,tag=new,tag=spellEntity,tag=apparitionBall] remove new
tag @e[type=item,tag=new,tag=apparitionBallItem] remove new