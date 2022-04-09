![License][license-image]
![GitHub branch checks state](https://img.shields.io/github/checks-status/lemonhandgrenade/hp-datapack/main)
![GitHub issues](https://img.shields.io/github/issues/lemonhandgrenade/hp-datapack)

# hp-datapack
A datapack for Minecraft revolving around the Harry Potter universe.


## Features
- Spell casting. [![Spells](https://img.shields.io/badge/Spells-220-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/spells "Spells IDs")
- Animagus. [![Animagi Animals](https://img.shields.io/badge/Animagi_Animals-54-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/animagus "Animagus IDs")
- Potion brewing. [![Potions](https://img.shields.io/badge/Potions-3-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/potions "Potions IDs")
- Corporeal Patronuses. [![Patronus](https://img.shields.io/badge/Patronuses-4-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/spells/_entities/patronus "Patronus IDs")
- The Hogwarts house teams
- More coming.

# Attribution
- Some of the broom's code was modified from [@the_floo_network][floo]'s map that can be found [here][floomap].
- Spells work on the foundation of [@CloudWolfYT][cloudwolf]'s [Slow raycasting tutorial][cloudwolfvid].


## How to start.
<details><summary>Spells</summary><p>

### Getting a wand.
You can use the command `/function hp:items/wand/(wood type)` to obtain a wand.  
Currently there is no survival way to obtain a wand though this will be changed in future updates.  

### Binding spells
As there's no way to select spells conveniently so you'll have to use the commands:  
- `scoreboard players set @s spell1 (Spell ID)`  
- `scoreboard players set @s spell2 (Spell ID)`  
- `scoreboard players set @s spell3 (Spell ID)`  
- `scoreboard players set @s spell4 (Spell ID)`  

Spell IDs can be found [here](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/spells).

### Selecting spells
To select a spell you must have a wand in your main hand.  
Spells can be cycled by dropping the wand. (Note. Looking directly down will drop the wand normally instead of swapping spells)  
Dropping normally will swap between spells 1 and 2  
Whilst sneaking and dropping cycles between spells 3 and 4  

### Using spells
Spells can be used by switching the wand to the offhand.  
It should also be known some spells have alternate ways of casting.  
To cast them you must sneak while swapping the wand to the offhand.  

</p></details>

<details><summary>Potions</summary><p>

### Starting equipment
To start brewing spells you'll need the right equipment listed below.  
- Cauldron `/function hp:items/equipment/cauldron`  
- Mortar and pestle `/function hp:items/equipment/mortar_and_pestle`  
- Scales (Optional) `/function hp:items/equipment/(brass or gold)_scales`  

### Brewing
Potions can be brewed rather simply.  
For instance here's the recipe to the Cure for Boils:
- [ ] Place 6 snake fangs into the mortar and pestle.
- [ ] Take the ground snake fangs and place them back into the mortar and pestle.
- [ ] Place 4 standard measures of powdered snake fangs into the cauldron.
- [ ] Click on the burner of the cauldron to increase the heat.
- [ ] Place 4 Horned slugs in the cauldron.
- [ ] Place 2 measures of porcupine quills into cauldron.
- [ ] Then place a glass phial into the cauldron to complete the potion.

</p></details>

<details><summary>Houses</summary><p>

### Assinging a house
The sorting hat's quiz hasn't been implemented yet so you must use a command to put a player in a house:
- `team join gryffindor @s`
- `team join slytherin @s`
- `team join ravenclaw @s`
- `team join hufflepuff @s`

</p></details>

<details><summary>Animagi</summary><p>

### Becoming an animagi
Currently the only way to become an animagi is to add the tag animagi:
- `function hp:admin/animagus/become_animagus`  
or
- `tag @s add animagus`

### Animagi effects
You will now have the ability to use the command `/trigger morph`  
This will transform you into your animagi form.  
Different forms have different abilities and are listed below:
- Beetles
  - Higher jump
  - Glide falling
- Birds (Butterflies included)
  - Flight
- Cats
  - Speed
  - Higher jump
  - No fall damage
- Dogs
  - Speed
  - Strength (Wolf has higher strength)
- Frogs
  - Higher jump
  - No fall damage
- Rabbits
  - Higher jump
- Rats
  - Speed
  - No fall damage

### Choosing an animagi
Usually your animagus form is chosen randomly thought they can be selected.  
To set your animagi use the command `/scoreboard players set @s animagusID (Animagus ID)`  
A list of animagus IDs can be found [here](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/animagus).

</p></details>

<details><summary>Brooms</summary><p>

### Getting a broom
Brooms can be obtained with the command `/function hp:items/broom/(Broom Type)`  

### Riding a broom
You can place the broom by dropping it onto an open floor (At least 3x3)  
You can then mount the broom as if it were a saddled pig (Because it is)  
The speed of the broom is controlled by which inventory slot you're on:
- 1: Inactive.
- 2-9: Increasing in speed.

### Recollecting your broom
To pick your broom back up you need to sneak next to it.

</p></details>

<details><summary>Misc</summary><p>

### Packages
Packages can be made by dropping any items (Up to 5) onto the floor with a piece of paper.  
They can also be named by having one of those items be a named name tag.  

### Money
Money currently has no value though can be obtained through the commands listed below:
- Galleon `/function hp:items/money/galleon`
- Leprechaun Galleon `/function hp:items/money/galleon_leprechaun`
- Sickle `/function hp:items/money/sickle`
- Leprechaun Sickle `/function hp:items/money/sickle_leprechaun`
- Knut `/function hp:items/money/knut`
- Leprechaun Knut `/function hp:items/money/knut_leprechaun`

### Shopping lists
The shopping lists are the items students needed each year in Hogwarts.  
You can get them with the following commands:
- Year1 `function hp:items/shopping_list/year1`
- Year2 `function hp:items/shopping_list/year2`
- Year3 `function hp:items/shopping_list/year3`
- Year4 `function hp:items/shopping_list/year4`
- Year5 `function hp:items/shopping_list/year5`
- Year6 `function hp:items/shopping_list/year6`
- Year7 `function hp:items/shopping_list/year7`

</p></details>

## Docs For Devs
WIP

## Bugs/Additions
- If you have Any bugs about the datapack feel free to report [here][issue].
- If you find any optimisations or want to propose an addition to the code please create a new pull request [here][pull].

## License
The code is available at [Github][home] under the [MIT license][license].


[floomap]: https://www.planetminecraft.com/project/harry-potter-adventure-map-3347878
[floo]: https://www.planetminecraft.com/member/the_floo_network
[cloudwolfvid]: https://www.youtube.com/watch?v=peRO138IgCA
[cloudwolf]: https://github.com/CloudWolfYT
[home]: https://github.com/lemonhandgrenade/hp-datapack
[issue]: https://github.com/lemonhandgrenade/hp-datapack/issues
[license]: http://revolunet.mit-license.org
[license-image]: https://img.shields.io/badge/license-MIT-blue.svg
[pull]: https://github.com/lemonhandgrenade/hp-datapack/pulls