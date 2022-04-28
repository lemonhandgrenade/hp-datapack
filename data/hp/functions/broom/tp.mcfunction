scoreboard players operation #current broomID = @s broomID
execute as @e[type=armor_stand,tag=broomVisual,tag=broom] if score @s broomID = #current broomID run tp @s ~ ~ ~ ~ ~