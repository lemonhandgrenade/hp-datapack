scoreboard players operation #current UID = @s UID
scoreboard players set temp values 12
execute if score temp values matches 1.. as @a if score @s UID = #current UID anchored eyes at @s positioned ^ ^ ^.1 rotated as @s as @e[type=#hp:levitation,tag=wingardium] if score @s UID = #current UID run function hp:entities/wingardium/raycast
execute if score temp values matches 0 as @a if score @s UID = #current UID anchored eyes at @s positioned ^ ^ ^.1 rotated as @s as @e[type=#hp:levitation,tag=wingardium] if score @s UID = #current UID run tp @s ^ ^ ^4