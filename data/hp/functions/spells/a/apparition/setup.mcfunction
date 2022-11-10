# Particles
execute at @s positioned ~ ~1 ~ run particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~ ~ 0.25 0.5 0.25 0 100 normal
execute at @s positioned ~ ~1 ~ run particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ^ ^ ^-0.5 0.25 0.5 0.25 0 100 normal

# Sounds
playsound minecraft:item.trident.riptide_2 player @a ~ ~ ~ 1 1.6

# Inflict Nausea If Used In Rapid Succession
execute if score @s apparitionCooldown matches 1.. run effect give @s minecraft:nausea 10 10 true

# Set Cooldown To 1.2 Sec So Player Knows When To Apparate To Avoid Weird Y 0 Bug
scoreboard players set @s apparitionCooldown 24

# This Tag Forces The Player To Spectate The Item Each Tick
tag @s add isApparating

# Splinching Random Value From 1->100
execute store result score #rng_splinch values run loot spawn 0 0 0 loot hp:rng/rng_splinch
tellraw @s[tag=debug] [{"text":"Splinch RNG: "},{"score":{"name":"#rng_splinch","objective":"values"}}]

# Splinching Only Happens If You're Running Before You Apparate
execute if score #rng_splinch values matches 1 if predicate hp:player/is_sprinting run tag @s add splinchSevere
execute if score #rng_splinch values matches ..5 if predicate hp:player/is_sprinting run tag @s add splinchMedium
execute if score #rng_splinch values matches ..10 if predicate hp:player/is_sprinting run tag @s add splinchSmall

# Summon Apparition Entity
function hp:spells/a/apparition/summon_snowball
# Force Player To Spectator Mode To Make Spectating Possible
# gamemode spectator