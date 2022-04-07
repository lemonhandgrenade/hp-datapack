scoreboard players set temp values 0
execute as @a if score @s UID = #target UID if entity @s[tag=duelRequest] run scoreboard players set temp values 1
execute as @a if score @s UID = #target UID run tag @s add duelMessage


execute if score temp values matches 1 run tellraw @s ["",{"text":"Sorry ","color":"gold"},{"selector":"@a[tag=duelMessage,limit=1]","color":"green"},{"text":" already has an outgoing duel request please try again later.","color":"gold"}]
execute if score temp values matches 0 run function hp:player/duel/select_player


tag @a remove duelMessage