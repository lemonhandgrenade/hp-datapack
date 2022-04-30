scoreboard players operation #current broomID = @s broomID
execute as @e[type=armor_stand,tag=broomVisual,tag=broom,sort=nearest,limit=3] if score @s broomID = #current broomID run tp @s ~ ~ ~

execute if score @s broomType matches 3 as @e[type=pig,tag=broomOffset,tag=broom] rotated ~ 0 if score @s broomID = #current broomID run tp @s ^ ^ ^1.5
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset1,tag=broom] rotated ~ 0 if score @s broomID = #current broomID run tp @s ^ ^ ^1.2
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset2,tag=broom] rotated ~ 0 if score @s broomID = #current broomID run tp @s ^ ^ ^2.1
execute if score @s broomType matches 16 as @e[type=pig,tag=broomOffset3,tag=broom] rotated ~ 0 if score @s broomID = #current broomID run tp @s ^ ^ ^3.0

function hp:broom/base