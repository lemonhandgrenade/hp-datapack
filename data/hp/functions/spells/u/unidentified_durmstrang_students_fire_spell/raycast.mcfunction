# Particle
particle dust_color_transition 1 0.45 0 2.5 1 0.075 0 ~ ~ ~ 0.1 0.1 0.1 0 3
# Add tag to hit entity

scoreboard players remove #temp slowcast 1
execute if score #temp slowcast matches ..-1 run tp @s ~ ~ ~


# End if block hit
execute if score #temp slowcast matches 0.. rotated as @a[tag=this,sort=nearest,limit=1] positioned ^ ^ ^0.4 unless block ~ ~ ~ #hp:air run function hp:spells/u/unidentified_durmstrang_students_fire_spell/private/end

execute if entity @s[tag=!reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=unidentifiedDurmstrangStudentsFireSpell,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^0.4 run function hp:spells/u/unidentified_durmstrang_students_fire_spell/raycast
execute if entity @s[tag=reflected] if score #temp slowcast matches 0.. as @a at @s as @e[type=area_effect_cloud,tag=unidentifiedDurmstrangStudentsFireSpell,tag=slowcast] if score @s UID = @p UID rotated as @p positioned as @s positioned ^ ^ ^-0.4 run function hp:spells/u/unidentified_durmstrang_students_fire_spell/raycast