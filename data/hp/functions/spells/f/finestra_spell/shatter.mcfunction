#setblock ~ ~ ~ air destroy
#

execute align xyz positioned ~0.5 ~ ~0.5 run summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["mendingCharm","finestraSpell","spellEntity"]}

execute if block ~ ~ ~ minecraft:white_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 1
execute if block ~ ~ ~ minecraft:orange_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 2
execute if block ~ ~ ~ minecraft:magenta_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 3
execute if block ~ ~ ~ minecraft:light_blue_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 4
execute if block ~ ~ ~ minecraft:yellow_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 5
execute if block ~ ~ ~ minecraft:lime_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 6
execute if block ~ ~ ~ minecraft:pink_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 7
execute if block ~ ~ ~ minecraft:gray_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 8
execute if block ~ ~ ~ minecraft:light_gray_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 9
execute if block ~ ~ ~ minecraft:cyan_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 10
execute if block ~ ~ ~ minecraft:purple_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 11
execute if block ~ ~ ~ minecraft:blue_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 12
execute if block ~ ~ ~ minecraft:brown_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 13
execute if block ~ ~ ~ minecraft:green_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 14
execute if block ~ ~ ~ minecraft:red_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 15
execute if block ~ ~ ~ minecraft:black_stained_glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 16
execute if block ~ ~ ~ minecraft:glass run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 17
execute if block ~ ~ ~ minecraft:white_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 18
execute if block ~ ~ ~ minecraft:orange_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 19
execute if block ~ ~ ~ minecraft:magenta_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 20
execute if block ~ ~ ~ minecraft:light_blue_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 21
execute if block ~ ~ ~ minecraft:yellow_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 22
execute if block ~ ~ ~ minecraft:lime_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 23
execute if block ~ ~ ~ minecraft:pink_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 24
execute if block ~ ~ ~ minecraft:gray_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 25
execute if block ~ ~ ~ minecraft:light_gray_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 26
execute if block ~ ~ ~ minecraft:cyan_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 27
execute if block ~ ~ ~ minecraft:purple_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 28
execute if block ~ ~ ~ minecraft:blue_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 29
execute if block ~ ~ ~ minecraft:brown_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 30
execute if block ~ ~ ~ minecraft:green_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 31
execute if block ~ ~ ~ minecraft:red_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 32
execute if block ~ ~ ~ minecraft:black_stained_glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 33
execute if block ~ ~ ~ minecraft:glass_pane run scoreboard players set @e[type=area_effect_cloud,tag=finestraSpell,distance=..1,sort=nearest,limit=1] X 34

execute if score charmsBreakBlocks settings matches 1 run setblock ~ ~ ~ air destroy


execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~ #hp:glass run setblock ~ ~ ~ air destroy
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~1 ~ ~ #hp:glass positioned ~1 ~ ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~1 #hp:glass positioned ~ ~ ~1 run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~-1 ~ ~ #hp:glass positioned ~-1 ~ ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~ ~-1 #hp:glass positioned ~ ~ ~-1 run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~1 ~ #hp:glass positioned ~ ~1 ~ run function hp:spells/f/finestra_spell/shatter
execute if score charmsBreakBlocks settings matches 1 if score charmsBreakConnected settings matches 1 if block ~ ~-1 ~ #hp:glass positioned ~ ~-1 ~ run function hp:spells/f/finestra_spell/shatter
execute if entity @s[type=area_effect_cloud] run function hp:spells/f/finestra_spell/private/end