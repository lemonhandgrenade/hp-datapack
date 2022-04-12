schedule function hp:20tick 20t

scoreboard players add @a spellCooldown 0
scoreboard players add @a currentSpellSlot 0
scoreboard players add @a deaths 0

scoreboard players remove @a[scores={vc=1..}] vc 1
execute as @a[scores={vc=0}] run function hp:player/remove_talking
scoreboard players remove @a[scores={transfigureTimer=1..}] transfigureTimer 1
execute as @a[scores={transfigureTimer=1}] run function hp:transfigure/untransfigure

kill @e[type=arrow,tag=spellEntity,tag=conjuredEntity,nbt={inGround:1b}]



execute as @a[tag=animagus] run function hp:animagus/main
execute as @a if score @s injuries matches ..-1 run function hp:player/injuries/list
execute as @a if score @s injuries matches 1.. run function hp:player/injuries/list
execute as @a if score @s player matches ..-1 run function hp:player/info
execute as @a if score @s player matches 1.. run function hp:player/info


tag @e[tag=slowedFall,nbt={OnGround:1b}] remove slowedFall


execute at @e[type=armor_stand,tag=ectoplasm] run particle dust_color_transition 0 1 0.45 2.5 0 1 0.075 ~ ~0.5 ~ 0.1 0.1 0.1 0 10
execute as @e[type=armor_stand,tag=caveInimicum] run function hp:spells/c/cave_inimicum/check


execute as @e run function hp:player/injuries/effect



execute as @a store result score @s selectedSlot run data get entity @s SelectedItemSlot


execute as @a[tag=bubbleHead,scores={vc=..0}] run item replace entity @s armor.head with air
execute as @a[tag=bubbleHead,scores={vc=..0}] run tag @s remove bubbleHead
execute as @a[tag=bigHead,scores={vc=..0}] run item replace entity @s armor.head with air
execute as @a[tag=bigHead,scores={vc=..0}] run tag @s remove bigHead


execute as @e[type=armor_stand,tag=candleLight] at @s run function hp:spells/c/candle_conjuring_spell/light

execute as @a[scores={sneakTest=1..}] at @s as @e[type=armor_stand,tag=broomElytra,tag=broom,limit=1,sort=nearest,distance=..1] run function hp:broom/remove_broom

execute as @e[type=marker,tag=transfiguredBlock] at @s if block ~ ~ ~ air run kill @s
