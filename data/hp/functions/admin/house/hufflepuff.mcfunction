tag @s add housed
tag @s remove gryffindor
tag @s remove slytherin
tag @s remove ravenclaw
title @s times 4 64 4

title @s title {"text":"Hufflepuff","color":"gold"}
title @s subtitle {"text":"\uE002"}
team join hufflepuff @s
tag @s add hufflepuff

advancement revoke @s through hp:pack/sorted
advancement grant @s only hp:pack/sorted
advancement grant @s only hp:pack/houses/hufflepuff