scoreboard players operation #current broomType = @s broomType
#tag @e[tag=broomVisual,limit=1,sort=nearest] remove interactable
#data merge entity @e[tag=broomVisual,limit=1,sort=nearest] {Glowing:0b,ArmorItems:[{},{},{},{}],Marker:1b}
#tp @p ~ ~ ~
execute if score @s broomType matches 1 as @p run function hp:items/broom/air_wave_gold
execute if score @s broomType matches 2 as @p run function hp:items/broom/australian_flyabout_50
execute if score @s broomType matches 3 as @p run function hp:items/broom/bluebottle
execute if score @s broomType matches 4 as @p run function hp:items/broom/cleansweep_one
execute if score @s broomType matches 5 as @p run function hp:items/broom/cleansweep_two
execute if score @s broomType matches 6 as @p run function hp:items/broom/cleansweep_three
execute if score @s broomType matches 7 as @p run function hp:items/broom/cleansweep_five
execute if score @s broomType matches 8 as @p run function hp:items/broom/cleansweep_six
execute if score @s broomType matches 9 as @p run function hp:items/broom/cleansweep_seven
execute if score @s broomType matches 10 as @p run function hp:items/broom/cleansweep_eleven
execute if score @s broomType matches 11 as @p run function hp:items/broom/comet_140
execute if score @s broomType matches 12 as @p run function hp:items/broom/comet_180
execute if score @s broomType matches 13 as @p run function hp:items/broom/comet_220
execute if score @s broomType matches 14 as @p run function hp:items/broom/comet_260
execute if score @s broomType matches 15 as @p run function hp:items/broom/comet_290
execute if score @s broomType matches 16 as @p run function hp:items/broom/fambus_station_wagon
execute if score @s broomType matches 17 as @p run function hp:items/broom/firebolt
execute if score @s broomType matches 18 as @p run function hp:items/broom/firebolt_supreme
execute if score @s broomType matches 19 as @p run function hp:items/broom/moontrimmer
execute if score @s broomType matches 23 as @p run function hp:items/broom/nimbus_1700
execute if score @s broomType matches 24 as @p run function hp:items/broom/nimbus_2000
execute if score @s broomType matches 25 as @p run function hp:items/broom/nimbus_2001
execute if score @s broomType matches 26 as @p run function hp:items/broom/oakshaft_79
execute if score @s broomType matches 27 as @p run function hp:items/broom/shooting_star
execute if score @s broomType matches 29 as @p run function hp:items/broom/silver_arrow
execute if score @s broomType matches 30 as @p run function hp:items/broom/starsweeper_xxi
execute if score @s broomType matches 31 as @p run function hp:items/broom/swiftstick
execute if score @s broomType matches 32 as @p run function hp:items/broom/thunderbolt_vii
execute if score @s broomType matches 33 as @p run function hp:items/broom/tinderblast
execute if score @s broomType matches 34 as @p run function hp:items/broom/transylvanian_barb
execute if score @s broomType matches 37 as @p run function hp:items/broom/varapidos
execute if score @s broomType matches 38 as @p run function hp:items/broom/yajirushi

execute if score @s broomType matches 3 as @e[type=pig,tag=broomOffset,sort=nearest,distance=..3] if score #current broomType = @s broomType at @s as @p at @s run tp @s ~ ~ ~
execute if score @s broomType matches 3 as @e[type=pig,tag=broomOffset,sort=nearest,distance=..3] if score #current broomType = @s broomType run tp @s ~ -256 ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset1,sort=nearest,distance=..5] if score #current broomType = @s broomType at @s as @p at @s run tp @s ~ ~ ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset1,sort=nearest,distance=..5] if score #current broomType = @s broomType run tp @s ~ -256 ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset2,sort=nearest,distance=..5] if score #current broomType = @s broomType at @s as @p at @s run tp @s ~ ~ ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset2,sort=nearest,distance=..5] if score #current broomType = @s broomType run tp @s ~ -256 ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset3,sort=nearest,distance=..5] if score #current broomType = @s broomType at @s as @p at @s run tp @s ~ ~ ~
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset3,sort=nearest,distance=..5] if score #current broomType = @s broomType run tp @s ~ -256 ~
tp @e[type=marker,tag=distanceCheck,tag=tmp,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=pig,tag=broomSaddle,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @s[distance=..1] ~ -256 ~

execute if score @s broomType matches 3 positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomOffset,limit=1,sort=nearest]
execute if score @s broomType matches 16 positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomOffset1,limit=1,sort=nearest]
execute if score @s broomType matches 16 positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomOffset2,limit=1,sort=nearest]
execute if score @s broomType matches 16 positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomOffset3,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=marker,tag=distanceCheck,tag=tmp,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomSaddle,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @s

scoreboard players reset @s values
scoreboard players reset @s broomID
scoreboard players reset @s slo_id