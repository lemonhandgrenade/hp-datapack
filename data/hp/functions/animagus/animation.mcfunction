function hp:animagus/get_motion

execute if score @s Y matches 0 at @s rotated as @s as @e[tag=animagusCreature,sort=nearest] if score @s UID = #current UID run function hp:animagus/animation/idle
execute if score @s Y matches 1.. at @s rotated as @s as @e[tag=animagusCreature,sort=nearest] if score @s UID = #current UID run function hp:animagus/animation/move