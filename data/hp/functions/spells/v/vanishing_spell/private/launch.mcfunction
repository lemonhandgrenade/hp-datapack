scoreboard players operation .find slo_id = @e[type=area_effect_cloud,tag=slowcast,limit=1,sort=nearest] slo_id
execute unless entity @s[tag=reflected] as @e[scores={slo_id=1..}] if score @s slo_id = .find slo_id run tag @s add this

scoreboard players operation #temp slowcast = @s slo_dst_per
execute if score @s slo_dst matches 1.. run function hp:spells/v/vanishing_spell/raycast
scoreboard players operation @s slo_dst -= @s slo_dst_per
execute if score @s slo_dst matches ..0 at @s run function hp:spells/v/vanishing_spell/private/end

tag @e remove this