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
execute store result score #rng_fortune_ball values run loot spawn 0 0 0 loot hp:rng/rng_fortune_ball

execute store result score #rng255 values run loot spawn 0 0 0 loot hp:rng/rng255
execute store result score #rng5 values run loot spawn 0 0 0 loot hp:rng/rng5
execute store result score #rng4 values run loot spawn 0 0 0 loot hp:rng/rng4
execute store result score #rng3 values run loot spawn 0 0 0 loot hp:rng/rng3

scoreboard objectives add UID dummy

team add noCollision
team modify noCollision collisionRule never
team modify noCollision nametagVisibility never

team add gameGroup
team modify gameGroup collisionRule never
team modify gameGroup nametagVisibility never
team modify gameGroup color light_purple

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
scoreboard objectives add spells trigger
scoreboard objectives add spell dummy
scoreboard objectives add currentSpellSlot dummy
scoreboard objectives add spell1 dummy
scoreboard objectives add spell2 dummy
scoreboard objectives add spell3 dummy
scoreboard objectives add spell4 dummy
scoreboard objectives add spellCooldown dummy
scoreboard objectives add spellLevel dummy
scoreboard objectives add spellForm dummy

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
scoreboard objectives add player trigger

scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sneakTest dummy

#-Wand---------------------------------------------------------------------------------------------#
scoreboard objectives add wandType dummy

#-Potion-------------------------------------------------------------------------------------------#
scoreboard objectives add potionCount dummy
scoreboard objectives add potionMath dummy
scoreboard objectives add polyjuiceTime dummy
scoreboard objectives add fluxweedSyrupTime dummy

function hp:potions/set_potion_storage

#-Items--------------------------------------------------------------------------------------------#
scoreboard objectives add wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

#-Moon-Related-------------------------------------------------------------------------------------#
scoreboard objectives add moon dummy
scoreboard objectives add lycanthropy dummy

#-Herbology----------------------------------------------------------------------------------------#
scoreboard objectives add plantAge dummy

#-Divination---------------------------------------------------------------------------------------#
scoreboard objectives add crystalTime dummy
scoreboard objectives add fortuneBall dummy

#-Mobs---------------------------------------------------------------------------------------------#
scoreboard objectives add owlID dummy
scoreboard objectives add thestralID dummy

#-Games--------------------------------------------------------------------------------------------#
scoreboard objectives add chessVillager minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add chessMove trigger
scoreboard objectives add chessID dummy


function hp:500tick
function hp:100tick
function hp:50tick
function hp:20tick
function hp:10tick
function hp:5tick
function hp:2tick

fill -1 -64 -1 2 -61 1 bedrock
fill 0 -63 0 0 -62 0 yellow_shulker_box

team add gryffindor {"translate":"house.hp.gryffindor","color":"dark_red"}
team modify gryffindor displayName [{"text":"\uE000"},{"translate":"house.hp.gryffindor","color":"dark_red"}]
team modify gryffindor prefix [{"text":"\uE000"},{"text":"[","color":"dark_red"},{"translate":"house.hp.gryffindor","color":"dark_red"},{"text":"] ","color":"dark_red"}]
team modify gryffindor seeFriendlyInvisibles false

team add slytherin {"translate":"house.hp.slytherin","color":"dark_green"}
team modify slytherin displayName [{"text":"\uE001"},{"translate":"house.hp.slytherin","color":"dark_green"}]
team modify slytherin prefix [{"text":"\uE001"},{"text":"[","color":"dark_green"},{"translate":"house.hp.slytherin","color":"dark_green"},{"text":"] ","color":"dark_green"}]
team modify slytherin seeFriendlyInvisibles false

team add hufflepuff {"translate":"house.hp.hufflepuff","color":"gold"}
team modify hufflepuff displayName [{"text":"\uE002"},{"translate":"house.hp.hufflepuff","color":"gold"}]
team modify hufflepuff prefix [{"text":"\uE002"},{"text":"[","color":"gold"},{"translate":"house.hp.hufflepuff","color":"gold"},{"text":"] ","color":"gold"}]
team modify hufflepuff seeFriendlyInvisibles false

team add ravenclaw {"translate":"house.hp.ravenclaw","color":"dark_blue"}
team modify ravenclaw displayName [{"text":"\uE003"},{"translate":"house.hp.ravenclaw","color":"dark_blue"}]
team modify ravenclaw prefix [{"text":"\uE003"},{"text":"[","color":"dark_blue"},{"translate":"house.hp.ravenclaw","color":"dark_blue"},{"text":"] ","color":"dark_blue"}]
team modify ravenclaw seeFriendlyInvisibles false

## 1.19 Because of animagi frogs
tellraw @a ["","Loaded ",{"text":"[HP]","color":"green","clickEvent":{"action":"open_url","value":"https://github.com/lemonhandgrenade/hp-datapack"},"hoverEvent":{"action":"show_text","contents":["Click To Go To The Pack Page"]}}," for MC 1.19+"]