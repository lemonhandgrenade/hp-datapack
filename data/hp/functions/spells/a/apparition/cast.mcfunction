# Make Sure Player Isn't Flying Broom And Apparition Is Far Enough
execute if entity @s[tag=!flyingBroom] if score @s apparitionTimer matches 4.. run function hp:spells/a/apparition/setup