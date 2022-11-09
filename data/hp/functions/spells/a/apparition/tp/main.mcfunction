scoreboard players operation #current UID = @s UID

# Add temporary tag to player to reference by BallItem
tag @s add aTemp
execute as @e[type=item,tag=apparitionBallItem] run function hp:spells/a/apparition/tp/item_main
tag @s remove aTemp

# Particles
execute at @s run particle dust_color_transition 0.075 0.02 0.1 4 0.1 0.04 0.24 ~ ~ ~ 0.1 0.1 0.1 0 24 normal
execute at @s run particle dust_color_transition 0.075 0.02 0.1 4 0.1 0.04 0.24 ^ ^ ^-0.5 0.1 0.1 0.1 0 24 normal
execute at @s run particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0 24 normal

# Collisions
execute at @s run particle block_marker barrier ~ ~0.75 ~ 0 0 0 0 0 normal @a[tag=debug]
execute at @s run particle block_marker barrier ~ ~-0.9 ~ 0 0 0 0 0 normal @a[tag=debug]
execute at @s unless block ~ ~0.75 ~ air as @a[tag=aTemp,limit=1] run function hp:spells/a/apparition/tp/end
execute at @s unless block ~ ~-0.9 ~ air as @a[tag=aTemp,limit=1] run function hp:spells/a/apparition/tp/end

# Count down timer to end
scoreboard players remove @s apparitionTimer 1
execute if score @s apparitionTimer matches ..0 run function hp:spells/a/apparition/tp/end
execute if score @s sneakTest matches 1 run function hp:spells/a/apparition/tp/end