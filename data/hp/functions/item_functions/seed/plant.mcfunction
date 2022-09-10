execute if entity @s[tag=fluxweed] run function hp:item_functions/seed/plant/fluxweed
execute if entity @s[tag=knotgrass] run function hp:item_functions/seed/plant/knotgrass
execute if entity @s[tag=moly] run function hp:item_functions/seed/plant/moly
execute if entity @s[tag=nettle] run function hp:item_functions/seed/plant/nettle
execute if entity @s[tag=spikyBush] run function hp:item_functions/seed/plant/spiky_bush
execute if entity @s[tag=wolfsbane] run function hp:item_functions/seed/plant/wolfsbane
execute if entity @s[tag=wormwood] run function hp:item_functions/seed/plant/wormwood
execute store result score rng4 values run loot spawn 0 0 0 loot hp:rng/rng4
execute if score rng4 values matches 1 as @e[type=armor_stand,tag=new,tag=plant] at @s run tp @s ~ ~ ~ ~0 ~
execute if score rng4 values matches 2 as @e[type=armor_stand,tag=new,tag=plant] at @s run tp @s ~ ~ ~ ~90 ~
execute if score rng4 values matches 3 as @e[type=armor_stand,tag=new,tag=plant] at @s run tp @s ~ ~ ~ ~180 ~
execute if score rng4 values matches 4 as @e[type=armor_stand,tag=new,tag=plant] at @s run tp @s ~ ~ ~ ~270 ~
scoreboard players add @e[type=armor_stand,tag=plant,tag=new] anim 0
tag @e[type=armor_stand,tag=plant,tag=new] remove new
kill @s