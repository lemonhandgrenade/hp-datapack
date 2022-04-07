scoreboard players operation temp values = @s UID
execute as @a if score @s UID = #target UID run tag @s add duelRequest
execute as @a if score @s UID = #target UID run scoreboard players enable @s duelAccept
execute as @a if score @s UID = #target UID run scoreboard players operation @s duelTarget = temp values

tag @s add sender
execute as @a if score @s UID = #target UID run tellraw @s ["",{"selector":"@a[tag=sender,limit=1]","color":"green"},{"text":" has requested to duel do you accept?","color":"gold"},{"text":"\n[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger duelAccept set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Accept","color":"dark_green"}]}}," ",{"text":"[✘]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger duelAccept set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Decline","color":"dark_red"}]}}]
tag @s remove sender