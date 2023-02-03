#execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run particle dust_color_transition 1 0 0 2 0 0 1 ~ ~ ~ 0 0 0 0 10
execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add expelled

scoreboard players set temp values 0

execute if score temp values matches 0 as @e[type=!#hp:alive,tag=expelled] run function hp:spells/s/summoning_charm/select_say

execute as @a at @s as @e[type=area_effect_cloud,tag=summoningCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned 0 0 0 align xyz positioned ^ ^ ^-4 run summon marker ~ ~ ~ {Tags:["new","summoningCharm"]}

execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp X run data get entity @s Pos[0] 90
execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp Y run data get entity @s Pos[1] 90
execute as @e[type=marker,tag=new,tag=summoningCharm] store result score temp Z run data get entity @s Pos[2] 90

execute if score temp Y matches ..0 run scoreboard players operation temp Y *= -1 values
scoreboard players operation temp Y += 100 values

tellraw @p[tag=this,tag=debug] ["Motion X: ", {"score":{"name":"temp","objective":"X"}}]
tellraw @p[tag=this,tag=debug] ["Motion Y: ", {"score":{"name":"temp","objective":"Y"}}]
tellraw @p[tag=this,tag=debug] ["Motion Z: ", {"score":{"name":"temp","objective":"Z"}}]

execute as @e[type=!#hp:alive,tag=expelled,tag=!broomVisual] run function hp:spells/s/summoning_charm/set_data
execute as @e[type=!#hp:alive,tag=expelled,tag=broomVisual] run function hp:spells/s/summoning_charm/set_data_broom

kill @e[type=marker,tag=new,tag=summoningCharm]
execute if entity @s[type=area_effect_cloud] run function hp:spells/s/summoning_charm/private/end
tag @s add done