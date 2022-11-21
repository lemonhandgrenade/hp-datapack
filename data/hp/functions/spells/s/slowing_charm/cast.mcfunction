scoreboard players set dstPer slowcast 48
scoreboard players set dst slowcast 48

execute store result score temp Y run data get entity @s Motion[1] 2000

tellraw @s[tag=debug] {"score":{"name":"temp","objective":"Y"},"color":"#4B0082"}

execute if score temp Y matches ..-1100 if entity @s[nbt={OnGround:0b},tag=!slowedFall] if score @s sneakTest matches 1 run function hp:spells/s/slowing_charm/hit_entity
execute if score temp Y matches -1099.. if score @s sneakTest matches 0 positioned ~ ~1.45 ~ run function hp:spells/s/slowing_charm/start
execute if entity @s[tag=!cantSpeak] at @s run tellraw @a[distance=..15,tag=!cantHear] ["","<",{"selector":"@s"},"> Arresto Momentum"]