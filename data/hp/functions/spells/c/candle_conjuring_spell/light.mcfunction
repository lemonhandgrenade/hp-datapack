
execute positioned ~ ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=12]

execute positioned ~ ~ ~ if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~ ~ if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=12,waterlogged=true]

### 4-cross pad
execute positioned ~1 ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
execute positioned ~-1 ~1 ~ if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
execute positioned ~ ~1 ~1 if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~1 ~1 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]
execute positioned ~ ~1 ~-1 if block ~ ~ ~ air run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ air run setblock ~ ~ ~ light[level=11]

execute positioned ~1 ~1 ~ if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~1 ~1 ~ if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=11,waterlogged=true]
execute positioned ~-1 ~1 ~ if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=11,waterlogged=true]
execute positioned ~ ~1 ~1 if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~1 ~1 if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=11,waterlogged=true]
execute positioned ~ ~1 ~-1 if block ~ ~ ~ water[level=0] run summon marker ~ ~ ~ {Tags:["candleLightBlock","lightBlock"]}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ water[level=0] run setblock ~ ~ ~ light[level=11,waterlogged=true]

particle minecraft:small_flame ~ ~0.5 ~ 0 0 0 0 3