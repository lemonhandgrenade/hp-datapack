# Make item entity
summon item ~ ~ ~ {Tags:["droppedItem"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:60,Motion:[0d,0.1d,0d]}
# Set data
data modify entity @e[tag=droppedItem,sort=nearest,limit=1,type=item] Item set from entity @s HandItems[0]

item replace entity @s weapon.mainhand with air

tag @e[tag=droppedItem,sort=nearest,limit=1,type=item] remove droppedItem

tag @s remove active
execute unless entity @s[tag=select] run tag @s add return