summon area_effect_cloud ~ ~ ~ {Particle:"sneeze",Radius:3f,RadiusPerTick:-0.015f,Duration:60,Effects:[{Id:2b,Amplifier:4b,Duration:80,ShowParticles:0b},{Id:9b,Amplifier:8b,Duration:200,ShowParticles:0b}]}
particle minecraft:sneeze ~ ~ ~ 1 0.5 1 0.02 150
particle minecraft:dust_color_transition 0.15 0.6 0.2 3 0.1 0.8 0.6 ~ ~0.5 ~ 1 0.5 1 0.01 225

# Sound
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1 1.3