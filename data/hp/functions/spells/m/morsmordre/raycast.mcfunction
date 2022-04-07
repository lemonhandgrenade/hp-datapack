particle glow_squid_ink ~ ~ ~ 0.05 0.05 0.05 0 3 force @a

execute positioned ~ 256 ~ if entity @s[distance=..8,tag=!done] run function hp:spells/m/morsmordre/summon_mark

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ~ ~0.2 ~ positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/m/morsmordre/private/end
execute if score #temp slowcast matches 0.. positioned ~ ~0.2 ~ positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/m/morsmordre/raycast