forceload add 0 0

gamerule maxEntityCramming 100

#-General------------------------------------------------------------------------------------------#
scoreboard objectives add settings dummy
execute unless score charmsBreakBlocks settings matches 0 run scoreboard players set charmsBreakBlocks settings 1
scoreboard players add charmsBreakBlocks settings 0
execute unless score charmsBreakConnected settings matches 0 run scoreboard players set charmsBreakConnected settings 1
scoreboard players add charmsBreakConnected settings 0
execute unless score charmsCanFire settings matches 0 run scoreboard players set charmsCanFire settings 1
scoreboard players add charmsCanFire settings 0
execute unless score charmsChangeBlocks settings matches 0 run scoreboard players set charmsChangeBlocks settings 1
scoreboard players add charmsChangeBlocks settings 0
scoreboard players add easySortingHat settings 0
scoreboard players add repairParticles settings 0
scoreboard players add toolEntityParticles settings 0
scoreboard players add plantParticles settings 0
scoreboard players add playerInfo settings 0
execute unless score resourcepackMobs settings matches 0 run scoreboard players set resourcepackMobs settings 1
scoreboard players add resourcepackMobs settings 0
execute unless score respawnWerewolf settings matches 0 run scoreboard players set respawnWerewolf settings 1
scoreboard players add respawnWerewolf settings 0


scoreboard objectives add values dummy
scoreboard players set tpCheck values 1
scoreboard players set #alternate values 1
scoreboard players set #alternate2 values 1
scoreboard players set -10 values -10
scoreboard players set -1 values -1
scoreboard players set 2 values 2
scoreboard players set 8 values 8
scoreboard players set 10 values 10
scoreboard players set 14 values 14
scoreboard players set 20 values 20
scoreboard players set 32 values 32
scoreboard players set 100 values 100
scoreboard players set 256 values 256

scoreboard players set #max values 127

execute store result score #rng_splinch values run loot spawn 0 0 0 loot hp:rng/rng_splinch
execute store result score #rng_animagus values run loot spawn 0 0 0 loot hp:rng/rng_animagus
execute store result score #rng_fear values run loot spawn 0 0 0 loot hp:rng/rng_fear

execute store result score rng255 values run loot spawn 0 0 0 loot hp:rng/rng255
execute store result score rng5 values run loot spawn 0 0 0 loot hp:rng/rng5
execute store result score rng4 values run loot spawn 0 0 0 loot hp:rng/rng4
execute store result score rng3 values run loot spawn 0 0 0 loot hp:rng/rng3

scoreboard objectives add UID dummy

team add noCollision
team modify noCollision collisionRule never
team modify noCollision nametagVisibility never

team add noName
team modify noName nametagVisibility never

#-Spell-Entities-----------------------------------------------------------------------------------#
scoreboard objectives add slowcast dummy
scoreboard players add dst slowcast 0
scoreboard players add dstPer slowcast 0

scoreboard objectives add sloID dummy
scoreboard objectives add sloDst dummy
scoreboard objectives add sloDstPer dummy

#-Spell-Player-------------------------------------------------------------------------------------#
scoreboard objectives add spellCount dummy
scoreboard objectives add spell dummy
scoreboard objectives add currentSpellSlot dummy
scoreboard objectives add spell1 dummy
scoreboard objectives add spell2 dummy
scoreboard objectives add spell3 dummy
scoreboard objectives add spell4 dummy
scoreboard objectives add spellCooldown dummy
#scoreboard objectives add spellPower dummy

scoreboard objectives add age dummy

scoreboard objectives add patronusID dummy

scoreboard objectives add ageLine dummy
scoreboard objectives add apparitionCooldown dummy
scoreboard objectives add apparitionTimer dummy
scoreboard objectives add apparitionMarkerX dummy
scoreboard objectives add apparitionMarkerY dummy
scoreboard objectives add apparitionMarkerZ dummy
scoreboard objectives add colourChangingCharm dummy
scoreboard objectives add engorgioSkullus dummy
scoreboard objectives add cruciatusCurse dummy
scoreboard objectives add bubbleHead dummy
scoreboard objectives add vc dummy
scoreboard objectives add transfigureTimer dummy
scoreboard objectives add anim dummy

scoreboard objectives add unsupportedFlight dummy

#-Houses-------------------------------------------------------------------------------------------#
scoreboard objectives add gryffindorQuiz dummy
scoreboard objectives add slytherinQuiz dummy
scoreboard objectives add ravenclawQuiz dummy
scoreboard objectives add hufflepuffQuiz dummy
scoreboard objectives add quizTrigger trigger
scoreboard objectives add quizQuestion dummy

#-Animagus-Player----------------------------------------------------------------------------------#
scoreboard objectives add animagusID dummy
scoreboard objectives add morph trigger

#-Brooms-------------------------------------------------------------------------------------------#
scoreboard objectives add broomType dummy
scoreboard objectives add broomID dummy

#-Player-------------------------------------------------------------------------------------------#
scoreboard objectives add fearID dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add X dummy
scoreboard objectives add motionX dummy
scoreboard objectives add Y dummy
scoreboard objectives add motionY dummy
scoreboard objectives add Z dummy
scoreboard objectives add motionZ dummy

scoreboard objectives add xzMotionTime dummy
scoreboard objectives add yMotionTime dummy

scoreboard objectives add selectedSlot dummy
scoreboard objectives add injuries trigger
scoreboard objectives add player trigger

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneakTest dummy

#-Wand---------------------------------------------------------------------------------------------#
scoreboard objectives add wandType dummy

#-Potion-------------------------------------------------------------------------------------------#
scoreboard objectives add potionCount dummy
scoreboard objectives add polyjuiceTime dummy
scoreboard objectives add fluxweedSyrupTime dummy

#-Items--------------------------------------------------------------------------------------------#
scoreboard objectives add wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

#-Moon-Related-------------------------------------------------------------------------------------#
scoreboard objectives add moon dummy
scoreboard objectives add lycanthropy dummy

#-Herbology----------------------------------------------------------------------------------------#
scoreboard objectives add plantTime dummy
scoreboard players set #timeBase plantTime 3600
scoreboard players set #timeMarker plantTime 1200
scoreboard objectives add plantState dummy


function hp:100tick
function hp:50tick
function hp:20tick
function hp:10tick
function hp:5tick
function hp:2tick

fill -1 -64 -1 2 -61 1 bedrock
fill 0 -63 0 0 -62 0 yellow_shulker_box

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

## 1.19 Because of animagi frogs
tellraw @a [{"text":"Loaded "},{"text":"[HP]","color":"green"},{"text":" for MC 1.19+\n"}]