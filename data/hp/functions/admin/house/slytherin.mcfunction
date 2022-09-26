tag @s add housed
tag @s remove gryffindor
tag @s remove ravenclaw
tag @s remove hufflepuff
title @s times 4 64 4

title @s title {"text":"Slytherin","color":"dark_green"}
title @s subtitle {"text":"\uE001"}
team join slytherin @s
tag @s add slytherin

advancement revoke @s through hp:pack/sorted
advancement grant @s only hp:pack/sorted
advancement grant @s only hp:pack/houses/slytherin