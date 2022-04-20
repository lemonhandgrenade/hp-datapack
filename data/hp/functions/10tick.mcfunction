schedule function hp:10tick 10t

execute as @a[tag=voiceLines] run function hp:player/voice_lines/select

tag @a[tag=!flyingBroom,predicate=!hp:no_broom] add flyingBroom
tag @a[tag=flyingBroom,predicate=hp:no_broom] remove flyingBroom



execute as @a[tag=sortingHat] run function hp:sorting_hat/main