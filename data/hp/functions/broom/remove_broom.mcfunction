#tag @e[tag=broomVisual,limit=1,sort=nearest] remove interactable
#data merge entity @e[tag=broomVisual,limit=1,sort=nearest] {Glowing:0b,ArmorItems:[{},{},{},{}],Marker:1b}
#tp @p ~ ~ ~
execute if score @s broomType matches 4 as @p run function hp:items/broom/cleansweep_one
execute if score @s broomType matches 5 as @p run function hp:items/broom/cleansweep_two
execute if score @s broomType matches 6 as @p run function hp:items/broom/cleansweep_three
execute if score @s broomType matches 23 as @p run function hp:items/broom/nimbus2000
execute if score @s broomType matches 24 as @p run function hp:items/broom/nimbus2001
execute if score @s broomType matches 26 as @p run function hp:items/broom/shooting_star
execute if score @s broomType matches 16 as @p run function hp:items/broom/firebolt
execute if score @s broomType matches 18 as @p run function hp:items/broom/moontrimmer
tp @e[type=marker,tag=distanceCheck,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @e[type=pig,tag=broomSaddle,limit=1,sort=nearest,distance=..1] ~ -256 ~
tp @s[distance=..1] ~ -256 ~
execute positioned ~ ~-256 ~ run kill @e[type=marker,tag=distanceCheck,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=armor_stand,tag=broomVisual,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @e[type=pig,tag=broomSaddle,limit=1,sort=nearest]
execute positioned ~ ~-256 ~ run kill @s

scoreboard players reset @s values
scoreboard players reset @s broomID
scoreboard players reset @s slo_id