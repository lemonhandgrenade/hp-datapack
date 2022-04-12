particle flame ~ ~ ~ 0 0 0 0 1
particle dust_color_transition 1 0 0 2 1 0.8 0 ~ ~ ~ 0 0 0 0 5

execute if entity @e[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/m/minerva_mcgonagalls_spell/explode

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
#execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/m/minerva_mcgonagalls_spell/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/m/minerva_mcgonagalls_spell/explode
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/m/minerva_mcgonagalls_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/m/minerva_mcgonagalls_spell/raycast

