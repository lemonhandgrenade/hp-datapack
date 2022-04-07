forceload add 0 0

#-General------------------------------------------------------------------------------------------#
scoreboard objectives add settings dummy
scoreboard players add charmsBreakBlocks settings 0
scoreboard players add charmsBreakConnected settings 0

scoreboard objectives add values dummy
scoreboard players set tpCheck values 1
scoreboard players set #alternate values 1
scoreboard players set #alternate2 values 1
scoreboard players set -1 values -1
scoreboard players set 2 values 2
scoreboard players set 10 values 10
scoreboard players set 20 values 20
scoreboard players set 40 values 40
scoreboard players set 100 values 100
scoreboard players set 256 values 256
execute store result score #rng_animagus values run loot spawn 0 0 0 loot hp:rng/rng_animagus

execute store result score rng255 values run loot spawn 0 0 0 loot hp:rng/rng255
execute store result score rng5 values run loot spawn 0 0 0 loot hp:rng/rng5
execute store result score rng3 values run loot spawn 0 0 0 loot hp:rng/rng3

scoreboard objectives add UID dummy

team add noCollision
team modify noCollision collisionRule never
team modify noCollision nametagVisibility never

team add noName
team modify noCollision nametagVisibility never

#-Spell-Entities-----------------------------------------------------------------------------------#
scoreboard objectives add slowcast dummy
scoreboard players add dst slowcast 0
scoreboard players add dst_per slowcast 0

scoreboard objectives add slo_id dummy
scoreboard objectives add slo_dst dummy
scoreboard objectives add slo_dst_per dummy

#-Spell-Player-------------------------------------------------------------------------------------#
scoreboard objectives add spell dummy
scoreboard objectives add currentSpellSlot dummy
scoreboard objectives add spell1 dummy
scoreboard objectives add spell2 dummy
scoreboard objectives add spell3 dummy
scoreboard objectives add spell4 dummy
scoreboard objectives add spellCooldown dummy
#scoreboard objectives add spellPower dummy

scoreboard objectives add patronusID dummy

scoreboard objectives add vc dummy
scoreboard objectives add transfigureTimer dummy
scoreboard objectives add anim dummy

#-Houses-------------------------------------------------------------------------------------------#
scoreboard objectives add gryffindorQuiz
scoreboard objectives add slytherinQuiz
scoreboard objectives add ravenclawQuiz
scoreboard objectives add hufflepuffQuiz

#-Animagus-Player----------------------------------------------------------------------------------#
scoreboard objectives add animagusID dummy
scoreboard objectives add morph trigger

#-Brooms-------------------------------------------------------------------------------------------#
scoreboard objectives add broomType dummy
scoreboard objectives add broomID dummy

#-Player-------------------------------------------------------------------------------------------#
scoreboard objectives add deaths deathCount
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add selectedSlot dummy
scoreboard objectives add injuries trigger
scoreboard objectives add player trigger
scoreboard objectives add duel trigger
scoreboard objectives add duelAccept trigger
scoreboard objectives add duelTarget dummy
scoreboard objectives add duelLeave trigger
scoreboard objectives add duelCooldown dummy

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneakTest dummy

#-Wand---------------------------------------------------------------------------------------------#
scoreboard objectives add wandType dummy


function hp:2tick
function hp:5tick
function hp:10tick
function hp:20tick
function hp:50tick
function hp:100tick


fill -1 0 -1 1 2 1 bedrock
fill 0 0 0 0 1 0 yellow_shulker_box


#-Duelling-Rooms-----------------------------------------------------------------------------------#
scoreboard objectives add activeDuels dummy

execute in hp:void run forceload add 0 0
execute in hp:void positioned 0 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 0 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 0 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 30 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 30 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 30 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 60 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 60 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 60 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 90 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 90 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 90 1 0 run setblock ~ ~-1 ~ stone

execute in hp:void positioned 120 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 120 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 120 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 150 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 150 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 150 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 180 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 180 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 180 1 0 run setblock ~ ~-1 ~ stone
execute in hp:void positioned 210 1 0 run setblock ~ ~ ~ structure_block{name:"hp:duelling_room",mode:"LOAD"}
execute in hp:void positioned 210 1 0 run setblock ~ ~-1 ~ redstone_block
execute in hp:void positioned 210 1 0 run setblock ~ ~-1 ~ stone

execute in hp:void run fill -1 0 -1 1 2 1 bedrock
execute in hp:void run fill 0 0 0 0 1 0 yellow_shulker_box


team add gryffindor {"text":"Gryffindor","color":"dark_red"}
team modify gryffindor displayName [{"text":"\uE000"},{"text":"Gryffindor","color":"dark_red"}]
team modify gryffindor prefix [{"text":"\uE000"},{"text":"[Gryffindor] ","color":"dark_red"}]
team modify gryffindor seeFriendlyInvisibles false

team add slytherin {"text":"Slytherin","color":"dark_green"}
team modify slytherin displayName [{"text":"\uE001"},{"text":"Slytherin","color":"dark_green"}]
team modify slytherin prefix [{"text":"\uE001"},{"text":"[Slytherin] ","color":"dark_green"}]
team modify slytherin seeFriendlyInvisibles false

team add hufflepuff {"text":"Hufflepuff","color":"gold"}
team modify hufflepuff displayName [{"text":"\uE002"},{"text":"Hufflepuff","color":"gold"}]
team modify hufflepuff prefix [{"text":"\uE002"},{"text":"[Hufflepuff] ","color":"gold"}]
team modify hufflepuff seeFriendlyInvisibles false

team add ravenclaw {"text":"Ravenclaw","color":"dark_blue"}
team modify ravenclaw displayName [{"text":"\uE003"},{"text":"Ravenclaw","color":"dark_blue"}]
team modify ravenclaw prefix [{"text":"\uE003"},{"text":"[Ravenclaw] ","color":"dark_blue"}]
team modify ravenclaw seeFriendlyInvisibles false



data modify storage hp:potions Empty set value [9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]
data modify storage hp:potions AntidoteToCommonPoisons set value [281, 281, 281, 281, 2430, 2430, 9999, 2622, 1620, 1620, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]
data modify storage hp:potions CureForBoils set value [2312, 2312, 2312, 2312, 9999, 1270, 1270, 1270, 1270, 1950, 1950, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]
data modify storage hp:potions SleepingDraught set value [1430, 1430, 1430, 1430, 990, 990, 2430, 2430, 9999, 2431, 2431, 2431, 2430, 2430, 9999, 2640, 2640, 2640, 2640, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]

tellraw @a [{"text":"Loaded "},{"text":"[HP]","color":"green"},{"text":" for MC 1.18+\n"}]


