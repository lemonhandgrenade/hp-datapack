execute as @e[type=item,dx=0,tag=!this,nbt={Item:{id:"minecraft:written_book"}}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add effected
execute as @e[type=item,tag=effected] run data modify entity @s Item set from entity @s Item.tag.OtherBook
tag @e[tag=effected] remove effected

execute if entity @s[type=area_effect_cloud] run function hp:spells/b/book_transfiguring_spell/private/end