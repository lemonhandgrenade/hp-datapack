tellraw @a[distance=..15] ["<",{"selector":"@s"},"> ",{"selector":"@e[type=armor_stand,tag=chessSelected,tag=boardSelected]"},{"text":" to A8"}]
execute as @e[type=armor_stand,tag=chessMiddle] if score @s chessID = #current chessID at @s align xyz run tp @e[type=armor_stand,tag=chessSelected,limit=1,sort=nearest] ~.815 ~.075 ~.185

execute as @e[type=armor_stand,tag=chessSelected,limit=1,sort=nearest] at @s if entity @e[type=armor_stand,tag=chessPiece,tag=!chessMiddle,tag=!chessSelected,distance=..0.01] run tag @s add chessCollide
execute at @s if entity @e[type=armor_stand,tag=chessCollide,distance=..5] run function hp:games/chess/capture/prompt

execute as @e[type=armor_stand,tag=chessSelected,limit=1,sort=nearest] at @s run playsound block.grindstone.use block @a ~ ~ ~ 0.2 1.2