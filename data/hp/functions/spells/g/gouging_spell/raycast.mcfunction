particle dolphin ~ ~ ~ 0 0 0 0 1

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~

execute if score #temp slowcast matches 0.. if entity @s[tag=!done] if score charmsBreakBlocks settings matches 1 positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:breakable run function hp:spells/g/gouging_spell/destroy
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/g/gouging_spell/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/g/gouging_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/g/gouging_spell/raycast

