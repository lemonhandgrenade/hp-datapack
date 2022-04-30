#tag @e[tag=broomVisual,limit=1,sort=nearest] remove interactable
#data merge entity @e[tag=broomVisual,limit=1,sort=nearest] {Glowing:0b,ArmorItems:[{},{},{},{}],Marker:1b}
#tp @p ~ ~ ~
execute if score @s broomType matches 1 as @p run function hp:items/broom/air_wave_gold
execute if score @s broomType matches 3 as @p run function hp:items/broom/bluebottle
execute if score @s broomType matches 4 as @p run function hp:items/broom/cleansweep_one
execute if score @s broomType matches 5 as @p run function hp:items/broom/cleansweep_two
execute if score @s broomType matches 6 as @p run function hp:items/broom/cleansweep_three
execute if score @s broomType matches 11 as @p run function hp:items/broom/comet_140
execute if score @s broomType matches 12 as @p run function hp:items/broom/comet_180
execute if score @s broomType matches 13 as @p run function hp:items/broom/comet_220
execute if score @s broomType matches 14 as @p run function hp:items/broom/comet_260
execute if score @s broomType matches 15 as @p run function hp:items/broom/comet_290
execute if score @s broomType matches 16 as @p run function hp:items/broom/firebolt
execute if score @s broomType matches 18 as @p run function hp:items/broom/moontrimmer
execute if score @s broomType matches 23 as @p run function hp:items/broom/nimbus_2000
execute if score @s broomType matches 24 as @p run function hp:items/broom/nimbus_2001
execute if score @s broomType matches 25 as @p run function hp:items/broom/oakshaft_79
execute if score @s broomType matches 26 as @p run function hp:items/broom/shooting_star
execute if score @s broomType matches 29 as @p run function hp:items/broom/starsweeper_xxi
execute if score @s broomType matches 31 as @p run function hp:items/broom/thunderbolt_vii

execute if score @s broomType matches 3 run tp @e[type=pig,tag=broomOffset,limit=1,sort=nearest,distance=..3] ~ -256 ~
tp @e[type=marker,tag=distanceCheck,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=pig,tag=broomSaddle,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @s[distance=..1] ~ -256 ~

execute if score @s broomType matches 3 positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomOffset,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=marker,tag=distanceCheck,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomSaddle,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @s

scoreboard players reset @s values
scoreboard players reset @s broomID
scoreboard players reset @s slo_id