execute store result score #temp chessID run data get entity @s ArmorItems[3].tag.CustomModelData
scoreboard players add #temp chessID 1
execute store result entity @s ArmorItems[3].tag.CustomModelData byte 1 run scoreboard players get #temp chessID
data modify entity @s[tag=whitePiece] CustomName set value '{"color":"white","translate":"games.hp.white_bishop"}'
data modify entity @s[tag=blackPiece] CustomName set value '{"color":"white","translate":"games.hp.black_bishop"}'
data modify entity @s[tag=redPiece] CustomName set value '{"color":"white","translate":"games.hp.red_bishop"}'