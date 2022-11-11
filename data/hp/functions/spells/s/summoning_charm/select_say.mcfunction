execute if entity @s[tag=broomElytra] at @s as @a[tag=this] run function hp:spells/s/summoning_charm/speak/custom_name
execute if entity @s[nbt=!{Item:{tag:{display:{}}}},nbt={Item:{id:"minecraft:written_book"}}] as @a[tag=this] run function hp:spells/s/summoning_charm/speak/book_name
execute if entity @s[tag=!broomElytra,nbt=!{Item:{tag:{display:{}}}},nbt=!{Item:{id:"minecraft:written_book"}}] as @a[tag=this] run function hp:spells/s/summoning_charm/speak/no_name
execute if data entity @s Item.tag.display.Name as @a[tag=this] run function hp:spells/s/summoning_charm/speak/name