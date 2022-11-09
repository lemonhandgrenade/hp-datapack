# Settings

## Table of Contents
- [General Info](#general-info)
- [Charms](#charms)
- [Tools](#tools)
- [Sorting Hat](#sorting-hat)
- [Player Info](#player-info)
- [Plants](#plants)
- [Mobs](#mobs)


# General Info

Settings are fake values on the scoreboard `settings`  
Each setting is toggleable where a score of 0 means off and 1 means on.  

To change their value you can use the command: `/scoreboard players set settingName settings value`  
With `settingName` being the actual setting's name and value being 0 or 1.

# Charms

## Block Breaking
Two settings control how charms interact with blocks destructively.  
These are `charmsBreakBlocks` and `charmsBreakConnected`  

`charmsBreakBlocks` effects whether a block can destroy or alter a block's state.

<details>
<summary>Uses of charmsBreakBlocks</summary>

| Name           | Function Name                        | File Dir                                                  |
| -------------- | ------------------------------------ | --------------------------------------------------------- |
| Finestra Spell | hp:spells/f/finestra_spell/shatter   | hp/functions/spells/f/finestra_spell/shatter.mcfunction   |
| Gouging Spell  | hp:spells/g/gouging_spell/raycast    | hp/functions/spells/g/gouging_spell/raycast.mcfunction    |
| Severing Charm | hp:spells/s/severing_charm/hit_block | hp/functions/spells/s/severing_charm/hit_block.mcfunction |

</details><br>

`charmsBreakConnected` effects if a destructive spell can effect the blocks beside it.

<details>
<summary>Uses of charmsBreakConnected</summary>

| Name           | Function Name                      | File Dir                                                |
| -------------- | ---------------------------------- | ------------------------------------------------------- |
| Finestra Spell | hp:spells/f/finestra_spell/shatter | hp/functions/spells/f/finestra_spell/shatter.mcfunction |

</details><br>

`charmsChangeBlocks` alters whether a charm can modify a block.

<details>
<summary>Uses of charmsChangeBlocks</summary>

| Name              | Function Name                         | File Dir                                                   |
| ----------------- | ------------------------------------- | ---------------------------------------------------------- |
| Cleaning Charm    | hp:spells/c/cleaning_charm/raycast    | hp/functions/spells/c/cleaning_charm/raycast.mcfunction    |
| Fire Making Spell | hp:spells/f/fire-making_spell/raycast | hp/functions/spells/f/fire-making_spell/raycast.mcfunction |
| Gouging Spell     | hp:spells/g/gouging_spell/raycast     | hp/functions/spells/g/gouging_spell/raycast.mcfunction     |

</details><br>

## Repair Particles

Repair particles are particles that will appear around blocks when they are able to be repaired with a spell like Reparo.  
The settings is `repairParticles`  

<details>
<summary>Uses of repairParticles</summary>

| Name           | Function Name                           | File Dir                                                     |
| -------------- | --------------------------------------- | ------------------------------------------------------------ |
| Spell Entities | hp:spells/\_entities/mending_charm/main | hp/functions/spells/\_entities/mending_charm/main.mcfunction |

</details><br>

# Tools

`toolEntityParticles` sets the particle type tools use to indicate where to pick them up.

<details>
<summary>Uses of toolEntityParticles</summary>

| Name            | Function Name                 | File Dir                                           |
| --------------- | ----------------------------- | -------------------------------------------------- |
| Cauldron        | hp:entities/cauldron/main     | hp/functions/entities/cauldron/main.mcfunction     |
| Mortar & Pestle | hp:entities/mortarpestle/main | hp/functions/entities/mortarpestle/main.mcfunction |
| Scales          | hp:entities/scales/update     | hp/functions/entities/scales/update.mcfunction     |

</details><br>

# Sorting Hat

`easySortingHat` changes the visual representation of the Sorting Hat's questions.

<details>
<summary>Uses of easySortingHat</summary>

| Name      | Function Name                        | File Dir                                                  |
| --------- | ------------------------------------ | --------------------------------------------------------- |
| Questions | hp:sorting_hat/questions/question_1  | hp/functions/sorting_hat/questions/question_1.mcfunction  |
|           | hp:sorting_hat/questions/question_2  | hp/functions/sorting_hat/questions/question_2.mcfunction  |
|           | hp:sorting_hat/questions/question_3  | hp/functions/sorting_hat/questions/question_3.mcfunction  |
|           | hp:sorting_hat/questions/question_4  | hp/functions/sorting_hat/questions/question_4.mcfunction  |
|           | hp:sorting_hat/questions/question_5  | hp/functions/sorting_hat/questions/question_5.mcfunction  |
|           | hp:sorting_hat/questions/question_6  | hp/functions/sorting_hat/questions/question_6.mcfunction  |
|           | hp:sorting_hat/questions/question_7  | hp/functions/sorting_hat/questions/question_7.mcfunction  |
|           | hp:sorting_hat/questions/question_8  | hp/functions/sorting_hat/questions/question_8.mcfunction  |
|           | hp:sorting_hat/questions/question_9  | hp/functions/sorting_hat/questions/question_9.mcfunction  |
|           | hp:sorting_hat/questions/question_10 | hp/functions/sorting_hat/questions/question_10.mcfunction |
|           | hp:sorting_hat/questions/question_11 | hp/functions/sorting_hat/questions/question_11.mcfunction |
|           | hp:sorting_hat/questions/question_12 | hp/functions/sorting_hat/questions/question_12.mcfunction |
|           | hp:sorting_hat/questions/question_13 | hp/functions/sorting_hat/questions/question_13.mcfunction |
|           | hp:sorting_hat/questions/question_14 | hp/functions/sorting_hat/questions/question_14.mcfunction |
|           | hp:sorting_hat/questions/question_15 | hp/functions/sorting_hat/questions/question_15.mcfunction |
|           | hp:sorting_hat/questions/question_16 | hp/functions/sorting_hat/questions/question_16.mcfunction |
|           | hp:sorting_hat/questions/question_17 | hp/functions/sorting_hat/questions/question_17.mcfunction |
|           | hp:sorting_hat/questions/question_18 | hp/functions/sorting_hat/questions/question_18.mcfunction |
|           | hp:sorting_hat/questions/question_19 | hp/functions/sorting_hat/questions/question_19.mcfunction |
|           | hp:sorting_hat/questions/question_20 | hp/functions/sorting_hat/questions/question_20.mcfunction |
|           | hp:sorting_hat/questions/question_21 | hp/functions/sorting_hat/questions/question_21.mcfunction |
|           | hp:sorting_hat/questions/question_22 | hp/functions/sorting_hat/questions/question_22.mcfunction |
|           | hp:sorting_hat/questions/question_23 | hp/functions/sorting_hat/questions/question_23.mcfunction |
|           | hp:sorting_hat/questions/question_24 | hp/functions/sorting_hat/questions/question_24.mcfunction |
|           | hp:sorting_hat/questions/question_25 | hp/functions/sorting_hat/questions/question_25.mcfunction |
|           | hp:sorting_hat/questions/question_26 | hp/functions/sorting_hat/questions/question_26.mcfunction |
|           | hp:sorting_hat/questions/question_27 | hp/functions/sorting_hat/questions/question_27.mcfunction |

</details><br>

## Effects

The `easySortingHat` on.  
<img title="easySortingHat On" src="./assets/easySortingHatOn.png" alt="easySortingHatOn" width="410" height="58" />

The `easySortingHat` off.  
<img title="easySortingHat Off" src="./assets/easySortingHatOff.png" alt="easySortingHatOff" width="410" height="58" />

The colors show which answers align to which house to be more easily sorted into the desired house.

# Player Info

`playerInfo` changes whether players can access the `/trigger player` command, which allows them to see information about them.  

Information a player can obtain from the `/trigger player` command is as follows:

- Player ID (This is assigned by the datapack)
- Deaths (Player total deaths since packs installation)
- Spells cast (Total amount of times the player has attempted to cast a spell)
- Biggest fear (Randomly generated by the pack)
- House (Only shows if sorted)

# Plants

`plantParticles` changes whether particles are displayed above fully grown custom plants.

<details>
<summary>Uses of plantParticles</summary>

| Name           | Function Name  | File Dir                            |
| -------------- | -------------- | ----------------------------------- |
| Spell Entities | hp:plants/main | hp/functions/plants/main.mcfunction |

</details><br>

# Mobs

`resourcepackMobs` changes whether mobs spawned use texture pack models vs vanilla models.

<details>
<summary>Uses of resourcepackMobs</summary>

| Name                  | Function Name                                   | File Dir                                                             |
| --------------------- | ----------------------------------------------- | -------------------------------------------------------------------- |
| Morph Teleport        | hp:animagus/morph/tp                            | hp/functions/animagus/morph/tp.mcfunction                            |
| Animagus Cardinal     | hp:animagus/morph/summon/bird/cardinal          | hp/functions/animagus/morph/summon/bird/cardinal.mcfunction          |
| Animagus Crow         | hp:animagus/morph/summon/bird/crow              | hp/functions/animagus/morph/summon/bird/crow.mcfunction              |
| Animagus Duck         | hp:animagus/morph/summon/bird/duck              | hp/functions/animagus/morph/summon/bird/duck.mcfunction              |
| Animagus Falcon       | hp:animagus/morph/summon/bird/falcon            | hp/functions/animagus/morph/summon/bird/falcon.mcfunction            |
| Animagus Pigeon       | hp:animagus/morph/summon/bird/pigeon            | hp/functions/animagus/morph/summon/bird/pigeon.mcfunction            |
| Animagus Monarch      | hp:animagus/morph/summon/butterfly/monarch      | hp/functions/animagus/morph/summon/butterfly/monarch.mcfunction      |
| Animagus Ornithoptera | hp:animagus/morph/summon/butterfly/ornithoptera | hp/functions/animagus/morph/summon/butterfly/ornithoptera.mcfunction |
| Animagus Postman      | hp:animagus/morph/summon/butterfly/postman      | hp/functions/animagus/morph/summon/butterfly/postman.mcfunction      |
| Animagus Ulysses      | hp:animagus/morph/summon/butterfly/ulysses      | hp/functions/animagus/morph/summon/butterfly/ulysses.mcfunction      |
| Animagus Doe          | hp:animagus/morph/summon/deer/doe               | hp/functions/animagus/morph/summon/deer/doe.mcfunction               |
| Animagus Stag         | hp:animagus/morph/summon/deer/stag              | hp/functions/animagus/morph/summon/deer/stag.mcfunction              |
| Werewolf Summon       | hp:werewolf/summon                              | hp/functions/werewolf/summon/mcfunction                              |

</details><br>

## Werewolf

`respawnWerewolf` decides whether players who die are still werewolves.

<details>
<summary>Uses of respawnWerewolf</summary>

| Name           | Function Name    | File Dir                              |
| -------------- | ---------------- | ------------------------------------- |
| Werewolf Dies  | hp:werewolf/dies | hp/functions/werewolf/dies.mcfunction |

</details><br>