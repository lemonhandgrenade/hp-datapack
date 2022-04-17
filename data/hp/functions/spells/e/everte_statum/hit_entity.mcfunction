summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
summon slime 0 0 0 {Size:1b,NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["push","spellEntity","new"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:2000}]}
execute rotated as @s as @e[dx=0,tag=!this] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] positioned ~0.7 ~0.7 ~0.7 positioned ^ ^ ^-0.4 run tp @e[type=slime,tag=new,tag=spellEntity,tag=push] ~ ~ ~
tag @e[type=slime,tag=new,tag=spellEntity,tag=push] remove new
execute if entity @s[type=area_effect_cloud] run function hp:spells/e/everte_statum/private/end