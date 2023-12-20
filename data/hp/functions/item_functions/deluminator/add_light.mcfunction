function hp:spells/_blocks/put_out

execute store result score #temp values run data get entity @s SelectedItem.tag.Lights
scoreboard players add #temp values 1

execute store result storage hp:temp temp int 1 run scoreboard players get #temp values

item modify entity @s weapon.mainhand hp:deluminator