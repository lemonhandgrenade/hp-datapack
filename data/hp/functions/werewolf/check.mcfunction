execute if entity @s[gamemode=!spectator,tag=!wereTransform] if score moonTime moon matches 13000.. if score moonTime moon matches ..22499 if score moonPhase moon matches 0 if score difficulty settings matches 1.. run function hp:werewolf/transform
execute if entity @s[tag=wereTransform] if score moonTime moon matches 22500.. if score moonTime moon matches ..23999 run function hp:werewolf/untransform
execute if entity @s[tag=wereTransform] if score moonTime moon matches 0.. if score moonTime moon matches ..12999 run function hp:werewolf/untransform
execute if entity @s[tag=wereTransform] unless score moonPhase moon matches 0 run function hp:werewolf/untransform