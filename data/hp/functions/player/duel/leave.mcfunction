scoreboard players operation #target UID = @s duelTarget

execute as @a if score @s UID = #target UID run function hp:player/duel/tp/start_tp
function hp:player/duel/tp/start_tp


scoreboard players remove amount activeDuels 1