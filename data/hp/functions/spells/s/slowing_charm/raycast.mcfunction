particle mycelium ~ ~ ~ 0 0 0 0 1
#execute as @e[dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run say Hit @s
#execute if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run function core:spells/aberforth_dumbledores_goat_charm/hit_entity
scoreboard players set @s values 0
execute if score @s values matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~-1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~0 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~0 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run function hp:spells/s/slowing_charm/hit_entity
execute if score @s values matches 0 positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air positioned ~ ~1 ~ if block ~ ~ ~ #hp:air if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0,nbt={OnGround:0b}] positioned ~0.99 ~0.99 ~0.99 run scoreboard players set @s values 1

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~
execute if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 unless block ~ ~ ~ #hp:air run function hp:spells/s/slowing_charm/private/end
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/s/slowing_charm/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. positioned ^ ^ ^-0.5 if block ~ ~ ~ #hp:air run function hp:spells/s/slowing_charm/raycast
