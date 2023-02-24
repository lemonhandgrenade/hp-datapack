scoreboard players operation #current thestralID = @s thestralID
execute as @e[tag=thestral] if score @s thestralID = #current thestralID run tp @s ~ -256 ~
execute as @e[tag=thestral] if score @s thestralID = #current thestralID run kill @s