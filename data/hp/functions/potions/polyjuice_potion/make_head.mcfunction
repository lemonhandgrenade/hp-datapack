data modify block 0 -64 0 Items[0].tag.Polyjuice set value 1b
data modify block 0 -64 0 Items[0].tag.HideFlags set value 33

item replace entity @s armor.head from block 0 -64 0 container.0
item modify entity @s armor.head hp:binding

scoreboard players set @s polyjuiceTime 288000