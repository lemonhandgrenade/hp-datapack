
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/l/locking_spell/block
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/l/locking_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/l/locking_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/l/locking_spell/raycast

