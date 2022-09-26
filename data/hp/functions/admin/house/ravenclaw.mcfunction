tag @s add housed
tag @s remove gryffindor
tag @s remove slytherin
tag @s remove hufflepuff
title @s times 4 64 4

title @s title {"text":"Ravenclaw","color":"dark_blue"}
title @s subtitle {"text":"\uE003"}
team join ravenclaw @s
tag @s add ravenclaw

advancement revoke @s through hp:pack/sorted
advancement grant @s only hp:pack/sorted
advancement grant @s only hp:pack/houses/ravenclaw