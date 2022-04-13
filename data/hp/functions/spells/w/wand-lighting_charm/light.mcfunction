execute positioned ~ ~ ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wandLightingCharmLightBlock","lightBlock"]}
execute positioned ~ ~ ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=10]

execute positioned ~ ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["wandLightingCharmLightBlock","lightBlock"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=10]

execute unless entity @s[scores={spell=605},predicate=hp:wand/wand_mainhand] run function hp:spells/w/wand-lighting_charm/cast