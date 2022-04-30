schedule function hp:10tick 10t

execute as @a[tag=voiceLines] run function hp:player/voice_lines/select

tag @a[tag=!flyingBroom,predicate=!hp:no_broom] add flyingBroom
tag @a[tag=flyingBroom,predicate=hp:no_broom] remove flyingBroom

kill @e[type=item,nbt={Item:{id:"minecraft:oak_button",Count:1b,tag:{KILL:1B}}}]

execute as @a[tag=sortingHat] run function hp:sorting_hat/main