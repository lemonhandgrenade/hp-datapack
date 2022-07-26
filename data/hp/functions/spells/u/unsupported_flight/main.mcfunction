advancement revoke @s only hp:unsupported_flight

scoreboard players operation @s X = @s motionX
scoreboard players operation @s Z = @s motionZ

execute store result score @s motionX run data get entity @s Pos[0] 100
execute store result score @s motionZ run data get entity @s Pos[2] 100

scoreboard players operation @s X -= @s motionX
scoreboard players operation @s Z -= @s motionZ

scoreboard players operation @s X *= @s X
scoreboard players operation @s Z *= @s Z

scoreboard players operation @s Y = @s X
scoreboard players operation @s Y += @s Z

tellraw @s[tag=debug] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s[tag=debug] [{"text":"X","color":"#4B0082"},{"score":{"name":"@s","objective":"X"},"color":"#4B0082"}]
tellraw @s[tag=debug] [{"text":"Z","color":"#4B0082"},{"score":{"name":"@s","objective":"Z"},"color":"#4B0082"}]
tellraw @s[tag=debug] [{"text":"Out Vec:","color":"#4B0082"},{"score":{"name":"@s","objective":"Y"},"color":"#4B0082"}]

execute if score @s Y matches 25000.. run function hp:spells/u/unsupported_flight/reset_motion

execute store result score temp X run data get entity @s Pos[0] 1
execute store result score temp Y run data get entity @s Pos[1] 1
execute store result score temp Z run data get entity @s Pos[2] 1

particle dust_color_transition 0.075 0.02 0.1 2 0.1 0.04 0.24 ~ ~1 ~ 0.1 0.1 0.1 0 24 normal

execute if entity @s[x_rotation=90,scores={sneakTest=1}] run function hp:spells/u/unsupported_flight/out