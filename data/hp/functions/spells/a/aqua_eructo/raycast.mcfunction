# Particle
particle dust_color_transition 0 0.45 1 2.5 0 0.075 1 ~ ~ ~ 0.1 0.1 0.1 0 3
playsound block.pointed_dripstone.drip_water block @a ~ ~ ~
# Add tag to hit entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~


# End if block hit
execute if score #temp slowcast matches 0.. rotated as @a[tag=this,sort=nearest,limit=1] positioned ^ ^ ^0.4 unless block ~ ~ ~ #hp:air run function hp:spells/a/aqua_eructo/private/end

#execute if score #temp slowcast matches 0.. rotated as @a[tag=this,sort=nearest,limit=1] positioned ^ ^ ^0.5 if block ~ ~ ~ #hp:air run function hp:spells/a/aqua_eructo/raycast
#execute if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=aquaEructo,tag=slowcast] if score @s UID = @p UID positioned ~ ~1 ~ facing entity @s feet facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^-0.5 run function hp:spells/a/aqua_eructo/raycast
execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=aquaEructo,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.4 run function hp:spells/a/aqua_eructo/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=aquaEructo,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^-0.4 run function hp:spells/a/aqua_eructo/raycast