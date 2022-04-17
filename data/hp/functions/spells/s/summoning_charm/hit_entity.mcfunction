#execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run particle dust_color_transition 1 0 0 2 0 0 1 ~ ~ ~ 0 0 0 0 10
execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add expelled

scoreboard players set temp values 0

execute if score temp values matches 0 as @e[type=!#hp:alive,tag=expelled] if entity @s[nbt=!{Item:{tag:{display:{}}}},nbt={Item:{id:"minecraft:written_book"}}] as @a[tag=this] run function hp:spells/s/summoning_charm/speak/book_name
execute if score temp values matches 0 as @e[type=!#hp:alive,tag=expelled] if entity @s[nbt=!{Item:{tag:{display:{}}}},nbt=!{Item:{id:"minecraft:written_book"}}] as @a[tag=this] run function hp:spells/s/summoning_charm/speak/no_name
execute if score temp values matches 0 as @e[type=!#hp:alive,tag=expelled] if data entity @s Item.tag.display.Name as @a[tag=this] run function hp:spells/s/summoning_charm/speak/name

execute as @a at @s as @e[type=area_effect_cloud,tag=summoningCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned 0 0 0 align xyz positioned ^ ^ ^-4 run summon marker ~ ~ ~ {Tags:["new","summoningCharm"]}

execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp X run data get entity @s Pos[0] 100
execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp Y run data get entity @s Pos[1] 100
execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp Z run data get entity @s Pos[2] 100

execute if score temp Y matches ..0 run scoreboard players operation temp Y *= -1 values
scoreboard players operation temp Y += 100 values

execute as @e[type=!#hp:alive,tag=expelled] run data merge entity @s {PickupDelay:5}
execute as @e[type=!#hp:alive,tag=expelled] store result entity @s Motion[0] double 0.0015 run scoreboard players get temp X
execute as @e[type=!#hp:alive,tag=expelled] store result entity @s Motion[1] double 0.0015 run scoreboard players get temp Y
execute as @e[type=!#hp:alive,tag=expelled] store result entity @s Motion[2] double 0.0015 run scoreboard players get temp Z

kill @e[type=marker,tag=new,tag=summoningCharm]
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/summoning_charm/private/end