tellraw @s ["",{"text":"ā Cloak of Invisibility\nā Sneak and look up to take off cloak"}]
execute if entity @s[tag=!invisibilityCloak,tag=!cloakOfInvisibility] run item replace entity @s armor.chest with air
tag @s[tag=!invisibilityCloak] add cloakOfInvisibility

function hp:transfigure/remove_armor

advancement revoke @s only hp:cloak_of_invisibility