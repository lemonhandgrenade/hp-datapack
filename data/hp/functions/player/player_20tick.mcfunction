scoreboard players remove @s[scores={vc=1..}] vc 1
execute if entity @s[scores={vc=0}] run function hp:player/remove_talking
scoreboard players remove @s[scores={transfigureTimer=1..}] transfigureTimer 1
execute if entity @s[scores={transfigureTimer=1}] run function hp:transfigure/untransfigure

execute if entity @s[tag=invisibilityCloak] run function hp:equipment/chest/invisibility_cloak/main
execute if entity @s[tag=cloakOfInvisibility] run function hp:equipment/chest/cloak_of_invisibility/main

execute if entity @s[tag=animagus] run function hp:animagus/main
execute if score @s injuries matches ..-1 run function hp:player/injuries/list
execute if score @s injuries matches 1.. run function hp:player/injuries/list
execute if score @s player matches ..-1 run function hp:player/info
execute if score @s player matches 1.. run function hp:player/info

execute store result score @s selectedSlot run data get entity @s SelectedItemSlot

execute if entity @s[tag=bubbleHead,scores={vc=..0}] run item replace entity @s armor.head with air
execute if entity @s[tag=bubbleHead,scores={vc=..0}] run tag @s remove bubbleHead
execute if entity @s[tag=bigHead,scores={vc=..0}] run item replace entity @s armor.head with air
execute if entity @s[tag=bigHead,scores={vc=..0}] run tag @s remove bigHead

execute if entity @s[scores={sneakTest=1..}] as @e[type=armor_stand,tag=broomElytra,tag=broom,limit=1,sort=nearest,distance=..1] run function hp:broom/remove_broom