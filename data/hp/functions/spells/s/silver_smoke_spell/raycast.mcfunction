scoreboard players add @s anim 1
scoreboard players operation temp values = @s anim
scoreboard players operation temp values %= 20 values

execute if score temp values matches 19 positioned ^ ^ ^-0.5 run function hp:spells/s/silver_smoke_spell/particles

particle mycelium ~ ~ ~ 0 0 0 0 0

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 unless block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.2 if block ~ ~ ~ #hp:air run function hp:spells/s/silver_smoke_spell/raycast