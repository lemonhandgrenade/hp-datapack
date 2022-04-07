tag @s remove duelRequest
scoreboard players set @s duelCooldown 0
scoreboard players operation #target UID = @s duelTarget

tag @s add duelMessage
execute as @a if score @s UID = #target UID run tellraw @s ["",{"text":"Your request to duel ","color":"gold"},{"selector":"@a[tag=duelMessage,limit=1]","color":"green"},{"text":" was declined.","color":"gold"}]
tag @a remove duelMessage

scoreboard players reset @s duelAccept

execute as @a if score @s UID = #target UID run tag @s add duelMessage
tellraw @s ["",{"text":"You declined ","color":"gold"},{"selector":"@a[tag=duelMessage,limit=1]","color":"green"},{"text":"'s","color":"green"},{"text":" request to duel.","color":"gold"}]
tag @a remove duelMessage