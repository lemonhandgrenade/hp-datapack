execute as @a[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 unless entity @s[nbt={Inventory:[{Slot:103b}]}] run function hp:spells/e/engorgio_skullus/enlarge
execute if entity @s[type=area_effect_cloud] run function hp:spells/e/engorgio_skullus/private/end