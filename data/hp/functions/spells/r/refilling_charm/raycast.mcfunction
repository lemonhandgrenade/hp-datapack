#execute if entity @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @e[tag=!this,dx=0] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/r/refilling_charm/hit_entity

execute as @e[dx=0,tag=!this,tag=!refilling_charm_item,nbt={Item:{id:"minecraft:glass_bottle",tag:{}}},nbt=!{Item:{tag:{PastPotion:{}}}}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,type=item] positioned ~0.7 ~0.7 ~0.7 run function hp:spells/r/refilling_charm/hit_entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 unless block ~ ~ ~ #hp:air run function hp:spells/r/refilling_charm/private/end
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #hp:air run function hp:spells/r/refilling_charm/raycast

