# Make Sure Player Isn't Flying Broom And Apparition Is Far Enough
execute if entity @s[tag=!flyingBroom] if score @s apparitionTimer matches 4.. if score @s sneakTest matches ..0 run function hp:spells/a/apparition/setup
execute if entity @s[tag=!flyingBroom] if score @s sneakTest matches 1.. run function hp:spells/a/apparition/marker/setup