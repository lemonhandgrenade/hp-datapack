particle mycelium ~ ~ ~ 0 0 0 0 1

execute if entity @e[type=#hp:levitation,tag=wingardium,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[type=#hp:levitation,tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/l/levitation_charm/remove_spell
execute if entity @e[type=#hp:levitation,tag=!set,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[type=#hp:levitation,tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/l/levitation_charm/hit_entity
execute as @e[type=#hp:levitation,tag=set,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s remove set
scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/l/levitation_charm/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/l/levitation_charm/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.1 if block ~ ~ ~ #hp:air run function hp:spells/l/levitation_charm/raycast