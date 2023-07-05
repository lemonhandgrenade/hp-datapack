particle poof ~ ~1 ~ .75 .75 .75 0 80
loot spawn ~ ~ ~ loot hp:entities/thestral
scoreboard players operation #current thestralID = @s thestralID
execute as @e[tag=thestral] if score @s thestralID = #current thestralID run tp @s ~ -256 ~
execute as @e[tag=thestral] if score @s thestralID = #current thestralID run kill @s