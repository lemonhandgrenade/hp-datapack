#execute unless block ~ ~-1 ~ farmland run function hp:plants/generic/harvest

# Melon Isn't There
execute unless block ~ ~ ~ melon_stem if score @s plantAge matches ..2 run function hp:plants/generic/destroy
execute unless block ~ ~ ~ melon_stem if score @s plantAge matches 3 run function hp:plants/harvest

# Melon Is Not Baby But Is There
execute unless block ~ ~ ~ melon_stem[age=0] if block ~ ~ ~ melon_stem if score @s plantAge matches ..2 run function hp:plants/generic/grow
execute unless block ~ ~ ~ melon_stem[age=0] if block ~ ~ ~ melon_stem if score @s plantAge matches 3.. run setblock ~ ~ ~ melon_stem[age=0]