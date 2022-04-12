execute at @a[tag=headlock] as @e[tag=headlock,type=area_effect_cloud] if score @s UID = @p UID run tp @p @s

scoreboard players remove @a[scores={spellCooldown=1..}] spellCooldown 1
scoreboard players remove @a[scores={anim=1..}] anim 1


execute if entity @e[type=area_effect_cloud,tag=slowcast] run function hp:spells/main

execute as @e[tag=transfigured] run function hp:transfigure/main

#execute as @a[predicate=hp:wand/wand_offhand] at @s run function hp:wand/cast
#execute as @e[type=item,tag=!expelled,nbt={OnGround:0b,Item:{tag:{Wand:1b}}}] at @s unless entity @p[x_rotation=90] run function hp:wand/change_spell


execute as @a[scores={anim=1..}] at @s run function hp:player/anim/select

execute as @e[tag=spellEntity] at @s run function hp:spells/_entities/main
execute as @a[tag=animagus,tag=morphed] run function hp:animagus/morph/tp
execute as @a[tag=morphed] run function hp:animagus/morph/effect

scoreboard players operation #alternate values *= -1 values
scoreboard players add #3 values 1
execute if score #3 values matches 4.. run scoreboard players set #3 values 1


scoreboard players remove @a[scores={sneakTest=1..}] sneakTest 1
scoreboard players add @a[scores={sneak=1..}] sneakTest 1
scoreboard players set @a[scores={sneak=1..}] sneak 0


execute as @a[tag=flyingBroom] at @s run function hp:broom/input


execute as @a[predicate=hp:wand/wand_offhand] at @s run function hp:wand/cast

execute as @e[type=armor_stand,tag=broomElytra,tag=broom] at @s as @e[type=armor_stand,tag=broomVisual,tag=broom] if score @s broomID = @e[type=armor_stand,tag=broom,limit=1,sort=nearest] broomID run tp @s ~ ~ ~ ~ ~