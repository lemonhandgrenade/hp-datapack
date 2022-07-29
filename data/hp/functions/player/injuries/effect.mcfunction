execute store result score rng3 values run loot spawn 0 0 0 loot hp:rng/rng3

scoreboard players add @s[tag=lycanthropySick] lycanthropy 1
execute if entity @s[tag=lycanthropySick] if score @s lycanthropy matches 2400.. run function hp:werewolf/lycanthropy/final

execute if entity @s[tag=deepCut] run function hp:player/injuries/stuck
effect give @s[tag=deepCut] minecraft:blindness 2 255 true

execute if entity @s[tag=petrified] run function hp:player/injuries/stuck
execute if entity @s[tag=petrified] run function hp:player/injuries/black_screen
title @s[tag=petrified] subtitle {"text":"Petrified","color":"white"}

execute if entity @s[tag=sleeping] run function hp:player/injuries/stuck
execute if entity @s[tag=sleeping] run function hp:player/injuries/black_screen
title @s[tag=sleeping] subtitle {"text":"Sleeping","color":"white"}

effect give @s[tag=blinded] minecraft:blindness 2 255 true
effect give @s[tag=legLocked] minecraft:slowness 2 255 true

execute if entity @s[tag=crucio] run function hp:spells/c/cruciatus_curse/effect

execute if entity @s[tag=brokenLeg] run function hp:player/injuries/stuck

effect give @s[tag=bound] minecraft:weakness 1 255 true
execute if entity @s[tag=bound] run function hp:player/injuries/stuck


execute if score rng3 values matches 1 run effect give @s[tag=jellyLegs] minecraft:slowness 1 3 true


execute at @s[tag=legLocked] run particle dust 0.5 0 0.4 1 ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=deepCut] run particle block redstone_block ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=petrified] run particle block stone ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=bound] run particle crit ~ ~1 ~ 0.1 0.1 0.1 0 10
execute at @s[tag=boundLight] run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0 10

execute if predicate hp:flagrante run effect give @s wither 1 1 true

execute at @s if entity @s[tag=handOfGlory,nbt={SelectedItem:{tag:{handOfGlory:1b}}}] anchored eyes run particle small_flame ^-0.35 ^ ^0.25
execute at @s if entity @s[tag=handOfGlory,nbt={Inventory:[{Slot:-106b,tag:{handOfGlory:1b}}]}] anchored eyes run particle small_flame ^0.35 ^ ^0.25