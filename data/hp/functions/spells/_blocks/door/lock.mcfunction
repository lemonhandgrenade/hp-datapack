execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:doors unless entity @e[type=interaction,tag=Lock,distance=..0.5] run summon interaction ~ ~-.01 ~ {width:1.02f,height:2.02f,Tags:["Lock","spellEntity"]}
execute align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #minecraft:trapdoors unless entity @e[type=interaction,tag=Lock,distance=..0.5] run summon interaction ~ ~-.01 ~ {width:1.02f,height:1.02f,Tags:["Lock","spellEntity"]}
scoreboard players operation @e[type=interaction,tag=Lock,distance=..1,sort=nearest,limit=1] spellLevel = #current spellLevel