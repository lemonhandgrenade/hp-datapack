scoreboard players set @s spellCooldown 25
execute if score @s spell matches 0 run function hp:spells/_null/cast

execute if score @s spell matches 1..35 run function hp:spells/a/_select
execute if score @s spell matches 36..78 run function hp:spells/b/_select
execute if score @s spell matches 79..130 run function hp:spells/c/_select
execute if score @s spell matches 131..157 run function hp:spells/d/_select
execute if score @s spell matches 158..179 run function hp:spells/e/_select
execute if score @s spell matches 180..224 run function hp:spells/f/_select
execute if score @s spell matches 225..251 run function hp:spells/g/_select
execute if score @s spell matches 252..294 run function hp:spells/h/_select
execute if score @s spell matches 295..315 run function hp:spells/i/_select
execute if score @s spell matches 316..321 run function hp:spells/j/_select
execute if score @s spell matches 322..327 run function hp:spells/k/_select
execute if score @s spell matches 328..351 run function hp:spells/l/_select
execute if score @s spell matches 352..381 run function hp:spells/m/_select
execute if score @s spell matches 382..382 run function hp:spells/n/_select
execute if score @s spell matches 383..396 run function hp:spells/o/_select
execute if score @s spell matches 397..440 run function hp:spells/p/_select
execute if score @s spell matches 441..441 run function hp:spells/q/_select
execute if score @s spell matches 442..468 run function hp:spells/r/_select
execute if score @s spell matches 469..542 run function hp:spells/s/_select
execute if score @s spell matches 543..578 run function hp:spells/t/_select
execute if score @s spell matches 579..587 run function hp:spells/u/_select
execute if score @s spell matches 588..604 run function hp:spells/v/_select
execute if score @s spell matches 605..620 run function hp:spells/w/_select
execute if score @s spell matches 621..621 run function hp:spells/y/_select
execute if score @s spell matches 622.. run function hp:spells/_custom/_select