execute as @a[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 run tag @s add effected

execute positioned as @a[tag=effected] rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^0.2 {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["meropeGauntsCharmPush","new"]}

scoreboard players operation @e[type=armor_stand,tag=meropeGauntsCharmPush,tag=new,limit=1] UID = @a[tag=effected] UID
execute as @e[type=armor_stand,tag=meropeGauntsCharmPush,tag=new,limit=1] at @s run tp @s ~ ~ ~ facing entity @p[tag=effected]

tag @e[type=armor_stand,tag=meropeGauntsCharmPush,tag=new,limit=1] remove new
scoreboard players set @a[tag=effected] anim 20
scoreboard players set @a[tag=effected] vc 1

tag @a[tag=effected] add meropeGauntsPush
tag @a[tag=effected] add cantSpeak
tag @a[tag=effected] remove effected
execute if entity @s[type=area_effect_cloud] run function hp:spells/m/merope_gaunts_charm/private/end