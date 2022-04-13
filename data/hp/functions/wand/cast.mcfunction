
function hp:inv/swap

scoreboard players add @s sneakTest 0

execute unless entity @s[tag=cantSpeak] unless predicate hp:wand/will_backfire if score @s sneakTest matches 1.. if score @s spellCooldown matches 0 run function hp:wand/select_alternative
execute unless entity @s[tag=cantSpeak] unless predicate hp:wand/will_backfire if score @s sneakTest matches 0 if score @s spellCooldown matches 0 run function hp:wand/select
execute unless entity @s[tag=cantSpeak] if predicate hp:wand/will_backfire if score @s spellCooldown matches 0 run function hp:wand/backfire_select

execute store result storage hp:spell CurrentSpell int 1 run scoreboard players get @s spell
execute unless score @s spell matches 457 run item modify entity @s weapon.mainhand hp:last_spell

scoreboard players add @s spellCount 1