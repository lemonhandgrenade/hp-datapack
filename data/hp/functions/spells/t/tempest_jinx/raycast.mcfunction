particle wax_off ~ ~ ~ 0 0 0 0 1

execute if entity @e[tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/t/tempest_jinx/explode

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
#execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/t/tempest_jinx/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/t/tempest_jinx/explode
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/t/tempest_jinx/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/t/tempest_jinx/raycast
