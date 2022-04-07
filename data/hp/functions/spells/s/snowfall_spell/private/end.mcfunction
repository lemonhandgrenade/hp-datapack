scoreboard players reset @s slo_id
scoreboard players reset @s slo_dst
scoreboard players reset @s slo_dst_per

summon armor_stand ~ ~ ~ {Tags:["spellEntity","snow","weather"],NoGravity:1b}

scoreboard players reset @s values
kill @s
