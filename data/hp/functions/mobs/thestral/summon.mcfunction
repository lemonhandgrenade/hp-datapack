summon minecraft:armor_stand ~ ~ ~ {ActiveEffects:[{Id:28,Amplifier:15b,Duration:1000000,ShowParticles:0b}],Invisible:1b,Small:1b,Tags:["thestral","thestralBase","new","specialMob"],ArmorItems:[{},{},{},{Count:1b,id:"minecraft:heart_of_the_sea",tag:{CustomModelData:2160}}],Passengers:[{id:"minecraft:pig",NoAI:1b,Health:60f,Attributes:[{Name:generic.max_health,Base:60}],Tags:["thestral","thestralPig","new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Silent:1b,Saddle:1b,Invulnerable:1b}]}
summon horse ~ ~ ~ {Age:-2147483647,Variant:4,ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:28,Amplifier:15b,Duration:1000000,ShowParticles:0b}],Tags:["thestral","thestralAI","new","specialMob","forceBaby"],Health:60f,Attributes:[{Name:generic.max_health,Base:60},{Name:generic.movement_speed,Base:0.3}]}
summon marker ~ ~ ~ {NoGravity:1b,Tags:["distanceCheck","tmp","new","thestral"]}

scoreboard players add global thestralID 1

scoreboard players operation @e[type=marker,tag=distanceCheck,tag=tmp,tag=new,sort=nearest] thestralID = global thestralID
scoreboard players operation @e[type=armor_stand,tag=thestral,tag=new,sort=nearest] thestralID = global thestralID
scoreboard players operation @e[type=horse,tag=thestral,tag=new,sort=nearest] thestralID = global thestralID
scoreboard players operation @e[type=pig,tag=thestral,tag=new,sort=nearest] thestralID = global thestralID

tag @e[tag=thestral,tag=new,sort=nearest] remove new