tag @s remove duelRequest
scoreboard players set @s duelCooldown 0
scoreboard players operation #target UID = @s duelTarget

tag @s add duelMessage
execute as @a if score @s UID = #target UID run tellraw @s ["",{"text":"Your request to duel ","color":"gold"},{"selector":"@a[tag=duelMessage,limit=1]","color":"green"},{"text":" was accepted.","color":"gold"}]
tag @a remove duelMessage

scoreboard players reset @s duelAccept

execute as @a if score @s UID = #target UID run tag @s add duelMessage
tellraw @s ["",{"selector":"@a[tag=duelMessage,limit=1]","color":"green"},{"text":"'s","color":"green"},{"text":" request to duel was accepted.","color":"gold"}]
tag @a remove duelMessage

scoreboard players add amount activeDuels 1

execute as @a if score @s UID = #target UID at @s store result score @s X run data get entity @s Pos[0] 1
execute as @a if score @s UID = #target UID at @s store result score @s Y run data get entity @s Pos[1] 1
execute as @a if score @s UID = #target UID at @s store result score @s Z run data get entity @s Pos[2] 1

execute store result score @s X run data get entity @s Pos[0] 1
execute store result score @s Y run data get entity @s Pos[1] 1
execute store result score @s Z run data get entity @s Pos[2] 1

tag @e[tag=new,tag=duelMarker] remove new

scoreboard players operation temp values = @s UID
execute as @a if score @s UID = #target UID run scoreboard players operation @s duelTarget = temp values
execute as @a if score @s UID = #target UID in hp:void run function hp:player/duel/teleport
execute in hp:void run function hp:player/duel/teleport

