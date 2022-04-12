scoreboard players set @s spellCooldown 25
execute if score @s spell matches 0 run function hp:spells/_null/cast

execute if score @s spell matches 1..35 run function hp:spells/a/_select_alternative
execute if score @s spell matches 36..78 run function hp:spells/b/_select_alternative
execute if score @s spell matches 79..130 run function hp:spells/c/_select_alternative
execute if score @s spell matches 131..157 run function hp:spells/d/_select_alternative
execute if score @s spell matches 158..179 run function hp:spells/e/_select_alternative
execute if score @s spell matches 180..224 run function hp:spells/f/_select_alternative
execute if score @s spell matches 225..251 run function hp:spells/g/_select_alternative
execute if score @s spell matches 252..294 run function hp:spells/h/_select_alternative
execute if score @s spell matches 295..315 run function hp:spells/i/_select_alternative
execute if score @s spell matches 316..321 run function hp:spells/j/_select_alternative
execute if score @s spell matches 322..327 run function hp:spells/k/_select_alternative
execute if score @s spell matches 328..351 run function hp:spells/l/_select_alternative
execute if score @s spell matches 352..381 run function hp:spells/m/_select_alternative
execute if score @s spell matches 382..382 run function hp:spells/n/_select_alternative
execute if score @s spell matches 383..396 run function hp:spells/o/_select_alternative
execute if score @s spell matches 397..440 run function hp:spells/p/_select_alternative
execute if score @s spell matches 441..441 run function hp:spells/q/_select_alternative
execute if score @s spell matches 442..468 run function hp:spells/r/_select_alternative
execute if score @s spell matches 469..541 run function hp:spells/s/_select_alternative
execute if score @s spell matches 542..577 run function hp:spells/t/_select_alternative
execute if score @s spell matches 578..586 run function hp:spells/u/_select_alternative
execute if score @s spell matches 587..603 run function hp:spells/v/_select_alternative
execute if score @s spell matches 604..619 run function hp:spells/w/_select_alternative
execute if score @s spell matches 620..620 run function hp:spells/y/_select_alternative
execute if score @s spell matches 621.. run function hp:spells/_custom/_select