execute if entity @s[tag=voiceLines] run function hp:player/voice_lines/select
tag @s[tag=!flyingBroom,predicate=!hp:no_broom] add flyingBroom
tag @s[tag=flyingBroom,predicate=hp:no_broom] remove flyingBroom
execute if entity @s[tag=sortingHat] run function hp:sorting_hat/main