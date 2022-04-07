tag @s remove knockedBack

execute as @a at @s as @e[type=armor_stand,tag=knockbackJinxPush] if score @s UID = @p UID run kill @s