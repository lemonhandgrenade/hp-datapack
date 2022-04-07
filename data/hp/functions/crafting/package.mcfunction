summon item ~ ~ ~ {Tags:["FinalCraft"],PickupDelay:20,Item:{id:"minecraft:paper",Count:1b,CustomModelData:10,tag:{display:{Name:'{"text":"Package","italic":false}'}}}}
execute as @e[type=item,tag=FinalCraft,limit=1,distance=..1] run function hp:crafting/package_data
execute as @e[type=item,tag=!FinalCraft,tag=!FloorCraft,distance=..1,limit=1,nbt={Item:{id:"minecraft:name_tag"}}] run data modify entity @e[type=item,tag=FinalCraft,limit=1,distance=..1] Item.tag.display.Name set from entity @s Item.tag.display.Name
execute as @e[type=item,tag=!FinalCraft,tag=!FloorCraft,distance=..1,limit=5] run data modify entity @e[type=item,tag=FinalCraft,limit=1,distance=..1] Item.tag.WrappedItems prepend from entity @s Item


kill @e[type=item,tag=!FinalCraft,tag=!FloorCraft,distance=..1,limit=5]
kill @s