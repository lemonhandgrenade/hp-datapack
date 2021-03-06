scoreboard players add @s deaths 0
scoreboard players add @s spellCount 0

tellraw @s ["","Player ID: ",{"score":{"name":"@s","objective":"UID"}}]
tellraw @s ["",{"text":"Deaths ","color":"dark_gray"},"☠: ",{"score":{"name":"@s","objective":"deaths"}}]
tellraw @s ["",{"text":"Spells cast","color":"light_purple"},": ",{"score":{"name":"@s","objective":"spellCount"}}]
tellraw @s ["",{"text":"Potions Brewed","color":"light_purple","hoverEvent":{"action":"show_text","contents":["Count of potions successfully brewed"]}},": ",{"score":{"name":"@s","objective":"potionCount"}}]
tellraw @s[scores={fearID=1}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Acromantulas"}]
tellraw @s[scores={fearID=2}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Banshees"}]
tellraw @s[scores={fearID=3}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Clowns"}]
tellraw @s[scores={fearID=4}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Death"}]
tellraw @s[scores={fearID=5}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Dementors"}]
tellraw @s[scores={fearID=6}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Disembodied body parts"}]
tellraw @s[scores={fearID=7}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Dragons"}]
tellraw @s[scores={fearID=8}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Giant Snakes"}]
tellraw @s[scores={fearID=9}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Moon"}]
tellraw @s[scores={fearID=10}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Mummys"}]
tellraw @s[scores={fearID=11}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Sharks"}]
tellraw @s[scores={fearID=12}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Vampires"}]
tellraw @s[scores={fearID=13}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Drowning"}]
tellraw @s[scores={fearID=14}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Werewolves"}]
tellraw @s[scores={fearID=15}] ["",{"text":"Biggest fear","color":"dark_green"},": ",{"text":"Zombies"}]

tellraw @s[tag=gryffindor] ["",{"text": "House: "},{"text":"\uE000"},{"text":"Gryffindor","color":"dark_red"}]
tellraw @s[tag=slytherin] ["",{"text": "House: "},{"text":"\uE001"},{"text":"Slytherin","color":"dark_green"}]
tellraw @s[tag=hufflepuff] ["",{"text": "House: "},{"text":"\uE002"},{"text":"Hufflepuff","color":"gold"}]
tellraw @s[tag=ravenclaw] ["",{"text": "House: "},{"text":"\uE003"},{"text":"Ravenclaw","color":"dark_blue"}]

tellraw @s[tag=animagus,scores={animagusID=1}] ["",{"text":"Animagus Form: "},{"text":"Beetle, Red","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=2}] ["",{"text":"Animagus Form: "},{"text":"Beetle, Blue","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=3}] ["",{"text":"Animagus Form: "},{"text":"Bird, Cardinal","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=4}] ["",{"text":"Animagus Form: "},{"text":"Bird, Crow","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=5}] ["",{"text":"Animagus Form: "},{"text":"Bird, Duck","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=6}] ["",{"text":"Animagus Form: "},{"text":"Bird, Eagle","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=7}] ["",{"text":"Animagus Form: "},{"text":"Bird, Falcon","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=8}] ["",{"text":"Animagus Form: "},{"text":"Bird, Pigeon","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=9}] ["",{"text":"Animagus Form: "},{"text":"Bird, Seabird","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=10}] ["",{"text":"Animagus Form: "},{"text":"Bird, Swan","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=11}] ["",{"text":"Animagus Form: "},{"text":"Butterfly, Monarch","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=12}] ["",{"text":"Animagus Form: "},{"text":"Butterfly, Ornithoptera","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=13}] ["",{"text":"Animagus Form: "},{"text":"Butterfly, Postman","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=14}] ["",{"text":"Animagus Form: "},{"text":"Butterfly, Ulysses","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=15}] ["",{"text":"Animagus Form: "},{"text":"Cat, British Shorthair","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=16}] ["",{"text":"Animagus Form: "},{"text":"Cat, Calico","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=17}] ["",{"text":"Animagus Form: "},{"text":"Cat, Jellie","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=18}] ["",{"text":"Animagus Form: "},{"text":"Cat, Panther","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=19}] ["",{"text":"Animagus Form: "},{"text":"Cat, Persian","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=20}] ["",{"text":"Animagus Form: "},{"text":"Cat, Ragdoll","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=21}] ["",{"text":"Animagus Form: "},{"text":"Cat, Red Tabby","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=22}] ["",{"text":"Animagus Form: "},{"text":"Cat, Siamese","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=23}] ["",{"text":"Animagus Form: "},{"text":"Cat, Tabby","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=24}] ["",{"text":"Animagus Form: "},{"text":"Cat, Tuxedo","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=25}] ["",{"text":"Animagus Form: "},{"text":"Cat, White","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=26}] ["",{"text":"Animagus Form: "},{"text":"Dog, Australian Shepherd","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=27}] ["",{"text":"Animagus Form: "},{"text":"Dog, Beagle","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=28}] ["",{"text":"Animagus Form: "},{"text":"Dog, Bernese","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=29}] ["",{"text":"Animagus Form: "},{"text":"Dog, Border Collie","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=30}] ["",{"text":"Animagus Form: "},{"text":"Dog, Boxer","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=31}] ["",{"text":"Animagus Form: "},{"text":"Dog, Bull Terrier","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=32}] ["",{"text":"Animagus Form: "},{"text":"Dog, Bulldog","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=33}] ["",{"text":"Animagus Form: "},{"text":"Dog, Cairn Terrier","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=34}] ["",{"text":"Animagus Form: "},{"text":"Dog, Chihuahua","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=35}] ["",{"text":"Animagus Form: "},{"text":"Dog, Corgi","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=36}] ["",{"text":"Animagus Form: "},{"text":"Dog, Dachshund","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=37}] ["",{"text":"Animagus Form: "},{"text":"Dog, Dalmatian","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=38}] ["",{"text":"Animagus Form: "},{"text":"Dog, Doberman","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=39}] ["",{"text":"Animagus Form: "},{"text":"Dog, German Shepherd","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=40}] ["",{"text":"Animagus Form: "},{"text":"Dog, Golden Retriever","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=41}] ["",{"text":"Animagus Form: "},{"text":"Dog, Great Dane","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=42}] ["",{"text":"Animagus Form: "},{"text":"Dog, Husky","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=43}] ["",{"text":"Animagus Form: "},{"text":"Dog, Jack Russel","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=44}] ["",{"text":"Animagus Form: "},{"text":"Dog, King Charles Spaniel","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=45}] ["",{"text":"Animagus Form: "},{"text":"Dog, Labrador","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=46}] ["",{"text":"Animagus Form: "},{"text":"Dog, Neapolitan Mastiff","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=47}] ["",{"text":"Animagus Form: "},{"text":"Dog, Poodle","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=48}] ["",{"text":"Animagus Form: "},{"text":"Dog, Pug","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=49}] ["",{"text":"Animagus Form: "},{"text":"Dog, Rottweiler","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=50}] ["",{"text":"Animagus Form: "},{"text":"Dog, Samoyed","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=51}] ["",{"text":"Animagus Form: "},{"text":"Dog, Shiba","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=52}] ["",{"text":"Animagus Form: "},{"text":"Dog, St Bernard","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=53}] ["",{"text":"Animagus Form: "},{"text":"Dog, White Terrier","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=54}] ["",{"text":"Animagus Form: "},{"text":"Dog, Wolf","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=55}] ["",{"text":"Animagus Form: "},{"text":"Frog, Brown","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=56}] ["",{"text":"Animagus Form: "},{"text":"Frog, Green","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=57}] ["",{"text":"Animagus Form: "},{"text":"Frog, Tree","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=58}] ["",{"text":"Animagus Form: "},{"text":"Gerbil","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=59}] ["",{"text":"Animagus Form: "},{"text":"Lemur","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=60}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Black","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=61}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Black White","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=62}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Brown","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=63}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Gold","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=64}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Killer Bunny","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=65}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, Salt Pepper","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=66}] ["",{"text":"Animagus Form: "},{"text":"Rabbit, White","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=67}] ["",{"text":"Animagus Form: "},{"text":"Rat, Brown","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=68}] ["",{"text":"Animagus Form: "},{"text":"Rat, Gray","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=69}] ["",{"text":"Animagus Form: "},{"text":"Rat, White","color":"dark_green"}]
tellraw @s[tag=animagus,scores={animagusID=70}] ["",{"text":"Animagus Form: "},{"text":"Stag","color":"dark_green"}]
scoreboard players set @s player 0