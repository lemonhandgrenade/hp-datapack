particle mycelium ~ ~ ~ 0 0 0 0 1

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ water_cauldron run setblock ~ ~ ~ cauldron
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ lava_cauldron run setblock ~ ~ ~ cauldron
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ powder_snow_cauldron run setblock ~ ~ ~ cauldron
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ cauldron run function hp:spells/c/cauldron_to_badger_spell/transfigure
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/c/cauldron_to_badger_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/c/cauldron_to_badger_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/c/cauldron_to_badger_spell/raycast

