scoreboard players set dst_per slowcast 48
scoreboard players set dst slowcast 48


execute store result score temp Y run data get entity @s Motion[1] 2000

tellraw @s[tag=debug] {"score":{"name":"temp","objective":"Y"},"color":"#4B0082"}

execute if score temp Y matches ..-1100 if entity @s[x_rotation=90,nbt={OnGround:0b},tag=!slowedFall] run function hp:spells/s/slowing_charm/hit_entity
execute unless entity @s[x_rotation=90] positioned ~ ~1.45 ~ run function hp:spells/s/slowing_charm/start
execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Arresto Momentum"]