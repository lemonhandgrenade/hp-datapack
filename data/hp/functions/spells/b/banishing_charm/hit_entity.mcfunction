#execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run particle dust_color_transition 1 0 0 2 0 0 1 ~ ~ ~ 0 0 0 0 10
execute as @e[type=!#hp:alive,dx=0,tag=!this] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 run tag @s add expelled
execute if entity @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 as @a at @s as @e[type=area_effect_cloud,tag=banishingCharm,tag=slowcast] if score @s UID = @p UID rotated as @p positioned 0 0 0 align xyz positioned ^ ^ ^4 run summon marker ~ ~ ~ {Tags:["new","banishingCharm"]}

execute as @e[type=marker,tag=new,tag=banishingCharm] store result score temp X run data get entity @s Pos[0] 100
execute as @e[type=marker,tag=new,tag=banishingCharm] store result score temp Y run data get entity @s Pos[1] 100
execute as @e[type=marker,tag=new,tag=banishingCharm] store result score temp Z run data get entity @s Pos[2] 100

execute if score temp Y matches ..0 run scoreboard players operation temp Y *= -1 values
scoreboard players operation temp Y += 100 values

execute as @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 store result entity @s Motion[0] double 0.0015 run scoreboard players get temp X
execute as @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 store result entity @s Motion[1] double 0.0015 run scoreboard players get temp Y
execute as @e[type=!#hp:alive,tag=!this,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[tag=!this,dx=0] positioned ~0.99 ~0.99 ~0.99 store result entity @s Motion[2] double 0.0015 run scoreboard players get temp Z

kill @e[type=marker,tag=new,tag=banishingCharm]
execute if entity @s[type=area_effect_cloud] run function hp:spells/b/banishing_charm/private/end