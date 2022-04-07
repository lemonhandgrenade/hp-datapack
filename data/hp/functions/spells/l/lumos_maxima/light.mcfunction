execute positioned ~ ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["lightBlock"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=15]

execute positioned ~ ~1 ~ if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["lightBlock"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=15,waterlogged=true]

execute positioned ~ ~ ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["lightBlock"]}
execute positioned ~ ~ ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=15]

execute positioned ~ ~ ~ if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["lightBlock"]}
execute positioned ~ ~ ~ if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=15,waterlogged=true]


