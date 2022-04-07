scoreboard players add @s animagusID 0
execute if score @s animagusID matches 0 run function hp:animagus/set_animagus
scoreboard players set @s morph 0
scoreboard players enable @s morph

effect give @s minecraft:blindness 3 255 true
particle minecraft:dust_color_transition 0.6 0.6 0.6 3 0.3 0.3 0.3 ~ ~1 ~ 0.25 0.5 0.25 0 200

execute if score @s animagusID matches 1 run tellraw @s ["",{"text":"Beetle: Red","color":"dark_green"}]
execute if score @s animagusID matches 2 run tellraw @s ["",{"text":"Beetle: Blue","color":"dark_green"}]
execute if score @s animagusID matches 3 run tellraw @s ["",{"text":"Bird: Cardinal","color":"dark_green"}]
execute if score @s animagusID matches 4 run tellraw @s ["",{"text":"Bird: Crow","color":"dark_green"}]
execute if score @s animagusID matches 5 run tellraw @s ["",{"text":"Bird: Duck","color":"dark_green"}]
execute if score @s animagusID matches 6 run tellraw @s ["",{"text":"Bird: Eagle","color":"dark_green"}]
execute if score @s animagusID matches 7 run tellraw @s ["",{"text":"Bird: Falcon","color":"dark_green"}]
execute if score @s animagusID matches 8 run tellraw @s ["",{"text":"Bird: Pigeon","color":"dark_green"}]
execute if score @s animagusID matches 9 run tellraw @s ["",{"text":"Bird: Seabird","color":"dark_green"}]
execute if score @s animagusID matches 10 run tellraw @s ["",{"text":"Bird: Swan","color":"dark_green"}]
execute if score @s animagusID matches 11 run tellraw @s ["",{"text":"Butterfly: Monarch","color":"dark_green"}]
execute if score @s animagusID matches 12 run tellraw @s ["",{"text":"Butterfly: Ornithoptera","color":"dark_green"}]
execute if score @s animagusID matches 13 run tellraw @s ["",{"text":"Butterfly: Postman","color":"dark_green"}]
execute if score @s animagusID matches 14 run tellraw @s ["",{"text":"Butterfly: Ulysses","color":"dark_green"}]
execute if score @s animagusID matches 15 run tellraw @s ["",{"text":"Cat: British Shorthair","color":"dark_green"}]
execute if score @s animagusID matches 16 run tellraw @s ["",{"text":"Cat: Calico","color":"dark_green"}]
execute if score @s animagusID matches 17 run tellraw @s ["",{"text":"Cat: Jellie","color":"dark_green"}]
execute if score @s animagusID matches 18 run tellraw @s ["",{"text":"Cat: Panther","color":"dark_green"}]
execute if score @s animagusID matches 19 run tellraw @s ["",{"text":"Cat: Persian","color":"dark_green"}]
execute if score @s animagusID matches 20 run tellraw @s ["",{"text":"Cat: Ragdoll","color":"dark_green"}]
execute if score @s animagusID matches 21 run tellraw @s ["",{"text":"Cat: Red Tabby","color":"dark_green"}]
execute if score @s animagusID matches 22 run tellraw @s ["",{"text":"Cat: Siamese","color":"dark_green"}]
execute if score @s animagusID matches 23 run tellraw @s ["",{"text":"Cat: Tabby","color":"dark_green"}]
execute if score @s animagusID matches 24 run tellraw @s ["",{"text":"Cat: Tuxedo","color":"dark_green"}]
execute if score @s animagusID matches 25 run tellraw @s ["",{"text":"Cat: White","color":"dark_green"}]
execute if score @s animagusID matches 26 run tellraw @s ["",{"text":"Dog: Australian Shepherd","color":"dark_green"}]
execute if score @s animagusID matches 27 run tellraw @s ["",{"text":"Dog: Beagle","color":"dark_green"}]
execute if score @s animagusID matches 28 run tellraw @s ["",{"text":"Dog: Bernese","color":"dark_green"}]
execute if score @s animagusID matches 29 run tellraw @s ["",{"text":"Dog: Border Collie","color":"dark_green"}]
execute if score @s animagusID matches 30 run tellraw @s ["",{"text":"Dog: Boxer","color":"dark_green"}]
execute if score @s animagusID matches 31 run tellraw @s ["",{"text":"Dog: Bull Terrier","color":"dark_green"}]
execute if score @s animagusID matches 32 run tellraw @s ["",{"text":"Dog: Bulldog","color":"dark_green"}]
execute if score @s animagusID matches 33 run tellraw @s ["",{"text":"Dog: Cairn Terrier","color":"dark_green"}]
execute if score @s animagusID matches 34 run tellraw @s ["",{"text":"Dog: Chihuahua","color":"dark_green"}]
execute if score @s animagusID matches 35 run tellraw @s ["",{"text":"Dog: Corgi","color":"dark_green"}]
execute if score @s animagusID matches 36 run tellraw @s ["",{"text":"Dog: Dachshund","color":"dark_green"}]
execute if score @s animagusID matches 37 run tellraw @s ["",{"text":"Dog: Dalmatian","color":"dark_green"}]
execute if score @s animagusID matches 38 run tellraw @s ["",{"text":"Dog: Doberman","color":"dark_green"}]
execute if score @s animagusID matches 39 run tellraw @s ["",{"text":"Dog: German Shepherd","color":"dark_green"}]
execute if score @s animagusID matches 40 run tellraw @s ["",{"text":"Dog: Golden Retriever","color":"dark_green"}]
execute if score @s animagusID matches 41 run tellraw @s ["",{"text":"Dog: Great Dane","color":"dark_green"}]
execute if score @s animagusID matches 42 run tellraw @s ["",{"text":"Dog: Husky","color":"dark_green"}]
execute if score @s animagusID matches 43 run tellraw @s ["",{"text":"Dog: Jack Russel","color":"dark_green"}]
execute if score @s animagusID matches 44 run tellraw @s ["",{"text":"Dog: King Charles Spaniel","color":"dark_green"}]
execute if score @s animagusID matches 45 run tellraw @s ["",{"text":"Dog: Labrador","color":"dark_green"}]
execute if score @s animagusID matches 46 run tellraw @s ["",{"text":"Dog: Neapolitan Mastiff","color":"dark_green"}]
execute if score @s animagusID matches 47 run tellraw @s ["",{"text":"Dog: Poodle","color":"dark_green"}]
execute if score @s animagusID matches 48 run tellraw @s ["",{"text":"Dog: Pug","color":"dark_green"}]
execute if score @s animagusID matches 49 run tellraw @s ["",{"text":"Dog: Rottweiler","color":"dark_green"}]
execute if score @s animagusID matches 50 run tellraw @s ["",{"text":"Dog: Samoyed","color":"dark_green"}]
execute if score @s animagusID matches 51 run tellraw @s ["",{"text":"Dog: Shiba","color":"dark_green"}]
execute if score @s animagusID matches 52 run tellraw @s ["",{"text":"Dog: St Bernard","color":"dark_green"}]
execute if score @s animagusID matches 53 run tellraw @s ["",{"text":"Dog: White Terrier","color":"dark_green"}]
execute if score @s animagusID matches 54 run tellraw @s ["",{"text":"Dog: Wolf","color":"dark_green"}]
execute if score @s animagusID matches 55 run tellraw @s ["",{"text":"Frog: Brown","color":"dark_green"}]
execute if score @s animagusID matches 56 run tellraw @s ["",{"text":"Frog: Green","color":"dark_green"}]
execute if score @s animagusID matches 57 run tellraw @s ["",{"text":"Frog: Tree","color":"dark_green"}]
execute if score @s animagusID matches 58 run tellraw @s ["",{"text":"Gerbil","color":"dark_green"}]
execute if score @s animagusID matches 59 run tellraw @s ["",{"text":"Lemur","color":"dark_green"}]
execute if score @s animagusID matches 60 run tellraw @s ["",{"text":"Rabbit: Black","color":"dark_green"}]
execute if score @s animagusID matches 61 run tellraw @s ["",{"text":"Rabbit: Black White","color":"dark_green"}]
execute if score @s animagusID matches 62 run tellraw @s ["",{"text":"Rabbit: Brown","color":"dark_green"}]
execute if score @s animagusID matches 63 run tellraw @s ["",{"text":"Rabbit: Gold","color":"dark_green"}]
execute if score @s animagusID matches 64 run tellraw @s ["",{"text":"Rabbit: Killer Bunny","color":"dark_green"}]
execute if score @s animagusID matches 65 run tellraw @s ["",{"text":"Rabbit: Salt Pepper","color":"dark_green"}]
execute if score @s animagusID matches 66 run tellraw @s ["",{"text":"Rabbit: White","color":"dark_green"}]
execute if score @s animagusID matches 67 run tellraw @s ["",{"text":"Rat: Brown","color":"dark_green"}]
execute if score @s animagusID matches 68 run tellraw @s ["",{"text":"Rat: Gray","color":"dark_green"}]
execute if score @s animagusID matches 69 run tellraw @s ["",{"text":"Rat: White","color":"dark_green"}]
execute if score @s animagusID matches 70 run tellraw @s ["",{"text":"Stag","color":"dark_green"}]

execute if score @s animagusID matches 1 run function hp:animagus/morph/summon/beetle/red
execute if score @s animagusID matches 2 run function hp:animagus/morph/summon/beetle/blue
execute if score @s animagusID matches 3 run function hp:animagus/morph/summon/bird/cardinal
execute if score @s animagusID matches 4 run function hp:animagus/morph/summon/bird/crow
execute if score @s animagusID matches 5 run function hp:animagus/morph/summon/bird/duck
execute if score @s animagusID matches 6 run function hp:animagus/morph/summon/bird/eagle
execute if score @s animagusID matches 7 run function hp:animagus/morph/summon/bird/falcon
execute if score @s animagusID matches 8 run function hp:animagus/morph/summon/bird/pigeon
execute if score @s animagusID matches 9 run function hp:animagus/morph/summon/bird/seabird
execute if score @s animagusID matches 10 run function hp:animagus/morph/summon/bird/swan
execute if score @s animagusID matches 11 run function hp:animagus/morph/summon/butterfly/monarch
execute if score @s animagusID matches 12 run function hp:animagus/morph/summon/butterfly/ornithoptera
execute if score @s animagusID matches 13 run function hp:animagus/morph/summon/butterfly/postman
execute if score @s animagusID matches 14 run function hp:animagus/morph/summon/butterfly/ulysses
execute if score @s animagusID matches 15 run function hp:animagus/morph/summon/cat/british_shorthair
execute if score @s animagusID matches 16 run function hp:animagus/morph/summon/cat/calico
execute if score @s animagusID matches 17 run function hp:animagus/morph/summon/cat/jellie
execute if score @s animagusID matches 18 run function hp:animagus/morph/summon/cat/panther
execute if score @s animagusID matches 19 run function hp:animagus/morph/summon/cat/persian
execute if score @s animagusID matches 20 run function hp:animagus/morph/summon/cat/ragdoll
execute if score @s animagusID matches 21 run function hp:animagus/morph/summon/cat/red_tabby
execute if score @s animagusID matches 22 run function hp:animagus/morph/summon/cat/siamese
execute if score @s animagusID matches 23 run function hp:animagus/morph/summon/cat/tabby
execute if score @s animagusID matches 24 run function hp:animagus/morph/summon/cat/tuxedo
execute if score @s animagusID matches 25 run function hp:animagus/morph/summon/cat/white
execute if score @s animagusID matches 26 run function hp:animagus/morph/summon/dog/australian_shepherd
execute if score @s animagusID matches 27 run function hp:animagus/morph/summon/dog/beagle
execute if score @s animagusID matches 28 run function hp:animagus/morph/summon/dog/bernese
execute if score @s animagusID matches 29 run function hp:animagus/morph/summon/dog/border_collie
execute if score @s animagusID matches 30 run function hp:animagus/morph/summon/dog/boxer
execute if score @s animagusID matches 31 run function hp:animagus/morph/summon/dog/bull_terrier
execute if score @s animagusID matches 32 run function hp:animagus/morph/summon/dog/bulldog
execute if score @s animagusID matches 33 run function hp:animagus/morph/summon/dog/cairn_terrier
execute if score @s animagusID matches 34 run function hp:animagus/morph/summon/dog/chihuahua
execute if score @s animagusID matches 35 run function hp:animagus/morph/summon/dog/corgi
execute if score @s animagusID matches 36 run function hp:animagus/morph/summon/dog/dachshund
execute if score @s animagusID matches 37 run function hp:animagus/morph/summon/dog/dalmatian
execute if score @s animagusID matches 38 run function hp:animagus/morph/summon/dog/doberman
execute if score @s animagusID matches 39 run function hp:animagus/morph/summon/dog/german_shepherd
execute if score @s animagusID matches 40 run function hp:animagus/morph/summon/dog/golden_retriever
execute if score @s animagusID matches 41 run function hp:animagus/morph/summon/dog/great_dane
execute if score @s animagusID matches 42 run function hp:animagus/morph/summon/dog/husky
execute if score @s animagusID matches 43 run function hp:animagus/morph/summon/dog/jack_russel
execute if score @s animagusID matches 44 run function hp:animagus/morph/summon/dog/king_charles_spaniel
execute if score @s animagusID matches 45 run function hp:animagus/morph/summon/dog/labrador
execute if score @s animagusID matches 46 run function hp:animagus/morph/summon/dog/neapolitan_mastiff
execute if score @s animagusID matches 47 run function hp:animagus/morph/summon/dog/poodle
execute if score @s animagusID matches 48 run function hp:animagus/morph/summon/dog/pug
execute if score @s animagusID matches 49 run function hp:animagus/morph/summon/dog/rottweiler
execute if score @s animagusID matches 50 run function hp:animagus/morph/summon/dog/samoyed
execute if score @s animagusID matches 51 run function hp:animagus/morph/summon/dog/shiba
execute if score @s animagusID matches 52 run function hp:animagus/morph/summon/dog/st_bernard
execute if score @s animagusID matches 53 run function hp:animagus/morph/summon/dog/white_terrier
execute if score @s animagusID matches 54 run function hp:animagus/morph/summon/dog/wolf
execute if score @s animagusID matches 55 run function hp:animagus/morph/summon/frog/brown
execute if score @s animagusID matches 56 run function hp:animagus/morph/summon/frog/green
execute if score @s animagusID matches 57 run function hp:animagus/morph/summon/frog/tree
execute if score @s animagusID matches 58 run function hp:animagus/morph/summon/gerbil
execute if score @s animagusID matches 59 run function hp:animagus/morph/summon/lemur
execute if score @s animagusID matches 60 run function hp:animagus/morph/summon/rabbit/black
execute if score @s animagusID matches 61 run function hp:animagus/morph/summon/rabbit/black_white
execute if score @s animagusID matches 62 run function hp:animagus/morph/summon/rabbit/brown
execute if score @s animagusID matches 63 run function hp:animagus/morph/summon/rabbit/gold
execute if score @s animagusID matches 64 run function hp:animagus/morph/summon/rabbit/killer_bunny
execute if score @s animagusID matches 65 run function hp:animagus/morph/summon/rabbit/salt_pepper
execute if score @s animagusID matches 66 run function hp:animagus/morph/summon/rabbit/white
execute if score @s animagusID matches 67 run function hp:animagus/morph/summon/rat/brown
execute if score @s animagusID matches 68 run function hp:animagus/morph/summon/rat/gray
execute if score @s animagusID matches 69 run function hp:animagus/morph/summon/rat/white
execute if score @s animagusID matches 70 run function hp:animagus/morph/summon/stag



tag @s add morphed