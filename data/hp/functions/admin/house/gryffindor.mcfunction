tag @s add housed
tag @s remove slytherin
tag @s remove ravenclaw
tag @s remove hufflepuff
title @s times 4 64 4

title @s title {"text":"Gryffindor","color":"dark_red"}
title @s subtitle {"text":"\uE000"}
team join gryffindor @s
tag @s add gryffindor

advancement revoke @s through hp:pack/sorted
advancement grant @s only hp:pack/sorted
advancement grant @s only hp:pack/houses/gryffindor