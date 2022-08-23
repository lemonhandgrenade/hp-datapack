<p align="center">
<a href="https://github.com/lemonhandgrenade/hp-datapack/license"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="License"></a>
<a href="https://github.com/lemonhandgrenade/hp-datapack/issues"><img src="https://img.shields.io/github/issues/lemonhandgrenade/hp-datapack" alt="Github issues"></a>
<a href=""><img src="https://img.shields.io/badge/files-3697-ff69b4"></a>
<a href=""><img src="https://img.shields.io/badge/total%20lines-37364-blueviolet"></a>
</p>

# hp-datapack
A datapack for Minecraft revolving around the Harry Potter universe.

Contents
- [Attribution](#attribution)
- [Features](#features)
- [How to start](#how-to-start)
- [Docs For Devs](#docs-for-devs)
- [Bugs/Additions](#bugs-and-additions)
- [Notes](#notes)
- [License](#license)

## Attribution
- Some of the broom's code was modified from [@the_floo_network][floo]'s map that can be found [here][floomap].
- Spells work on the foundation of [@CloudWolfYT][cloudwolf]'s [Slow raycasting tutorial][cloudwolfvid].
- I would recommend the [Better Dogs][betterdogslink] texture pack by [mrblueyeti][mrblueyeti].

---

## Features
- Spell casting. [![Spells](https://img.shields.io/badge/Spells-224-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/spells "Spells IDs")
- Animagus. [![Animagi Animals](https://img.shields.io/badge/Animagi_Animals-63-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/animagus "Animagus IDs")
- Potion brewing. [![Potions](https://img.shields.io/badge/Potions-8-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/potions "Potions IDs")
- Corporeal Patronuses. [![Patronus](https://img.shields.io/badge/Patronuses-4-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/spells/_entities/patronus "Patronus IDs")
- Brooms. [![Brooms](https://img.shields.io/badge/Brooms-29-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/broom)
- Wizard cards. [![Wizard Cards](https://img.shields.io/badge/Wizard%20Cards-135-2ea44f)](https://github.com/lemonhandgrenade/hp-datapack/tree/main/data/hp/functions/broom)
- The Hogwarts house teams.
- More coming.


## How to start
<details><summary>Spells</summary><p>

### Getting a wand.
You can use the command `/function hp:items/wand/(wood type)/(wood type)_(core type)` to obtain a wand.  
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
Dropping normally will swap between spells 1 and 2 or 3 and 4  
Whilst sneaking and dropping cycles between spells 1 to 2 and 3 to 4  
<details><summary>See Here</summary><p>

| Current Spell Slot | Drop | Sneak Drop |
|:------------------:|:----:|:----------:|
| 1                  | 2    | 3          |
| 2                  | 1    | 3          |
| 3                  | 4    | 1          |
| 4                  | 3    | 1          |

</p></details>

### Using spells
Spells can be used by switching the wand to the offhand.  
It should also be known some spells have alternate ways of casting.  
To cast them you must sneak while swapping the wand to the offhand.  

---

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

---

</p></details>

<details><summary>Houses</summary><p>

### Assinging a house
There are now two ways to get sorted  
Either by the sorting hat:  
- `/function hp:items/clothes/head/sorting_hat`
- Place the sorting hat on your head slot.
- Complete the quiz in chat.

Or by commands:
- `/function hp:admin/house/gryffindor`
- `/function hp:admin/house/slytherin`
- `/function hp:admin/house/ravenclaw`
- `/function hp:admin/house/hufflepuff`

---

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

---

</p></details>

<details><summary>Clothes</summary><p>

### Hats
- Sorting hat: `/function hp:items/clothes/head/sorting_hat`
- Top hat: `/function hp:items/clothes/head/top_hat`

---

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

---

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

---

</p></details>

<details><summary>Settings</summary><p>

## Settings

Settings can be accessed in the `settings` scoreboard  
True and false are represented as 1 and 0 respectively  

- `charmsBreakBlocks`: This will change whether charms can destroy blocks, eg. Whether the Gouging spell breaks stone into cobblestone.
- `charmsBreakConnected`: This changes whether charms can break connected blocks from the initial, eg. Whether Finestra breaks all glass in the pane.
- `charmsChangeBlocks`: This changes whether charms can alter a block's state, eg. Whether the Fire-making spell can light a campfire.
- `easySortingHat`: This changes whether the sorting hat's questions are colored representing what house they benefit.
- `playerInfo`: Changes whether a player has access to their stats from `/trigger injuries` and `/trigger player`.  
- `repairParticles`: If this is set to 1, blocks that are repairable with the mending charm will have particles around it.
- `resourcepackMobs`: This changes whether spawned mobs should use a resourcepack item vs a regular in game item.
- `respawnWerewolf`: When disabled players who die as werewolves respawn no longer as werewolves.
- `toolEntityParticles`: Shows particles above tools indicating where to pick them up.

---

</p></details>

## Docs For Devs
Basic docs can be found [here](https://github.com/lemonhandgrenade/hp-datapack/tree/main/docs).

## Bugs and Additions
- If you find any bugs in the datapack feel free to report [here][issue].
- If you find any optimisations or want to propose an addition to the code please create a new pull request [here][pull].
- You can also suggest [here][issue] using the suggestion label.

## Notes
- This is a very big pack and so it's recommended Minecraft have at least 2-4gb minimum.
- The pack is very far from survival friendly and has 0 recipes so all items have to be obtained with commands.
- As far as multiplayer compatibility, it has only been tested with 2 players.

## License
The code is available at [Github][home] under the [MIT license][license].


[floomap]: https://www.planetminecraft.com/project/harry-potter-adventure-map-3347878
[floo]: https://www.planetminecraft.com/member/the_floo_network
[cloudwolfvid]: https://www.youtube.com/watch?v=peRO138IgCA
[cloudwolf]: https://github.com/CloudWolfYT
[betterdogslink]: https://www.curseforge.com/minecraft/texture-packs/better-dogs
[mrblueyeti]: https://www.curseforge.com/members/mrblueyeti/projects
[home]: https://github.com/lemonhandgrenade/hp-datapack
[issue]: https://github.com/lemonhandgrenade/hp-datapack/issues
[license]: http://revolunet.mit-license.org
[license-image]: https://img.shields.io/badge/license-MIT-blue.svg
[pull]: https://github.com/lemonhandgrenade/hp-datapack/pulls