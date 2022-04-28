# Table of Contents
1. [Wands](#wands)
2. [Potions](#potions)
3. [Generators](#generators)


## Wands
Wands are made with the following nbt:  

<img title="Compound" src="./assets/compound.png" alt="Nbt icon" width="20" /> <b>Item data</b>    
├<img title="Int" src="./assets/int.png" alt="Nbt icon" width="20" /> <b>WoodID</b>: An integer of the wood type.    
├<img title="String" src="./assets/string.png" alt="Nbt icon" width="20" /> <b>WoodName</b>: The name of the wood as an nbt string.    
├<img title="Int" src="./assets/int.png" alt="Nbt icon" width="20" /> <b>CoreID</b>: An integer of the core type.    
├<img title="String" src="./assets/string.png" alt="Nbt icon" width="20" /> <b>CoreName</b>: The name of the core as an nbt string.    
├<img title="Bool" src="./assets/bool.png" alt="Nbt icon" width="20" /> <b>Wand</b>: This confirms that it is a wand and should always be set to 1b.    
└<img title="Bool" src="./assets/bool.png" alt="Nbt icon" width="20" /> <b>Set</b>: Whether the lore on the wand is set. (by default 0b).    

## Potions
Potions can have a maximum of 32 steps currently.  
Each recipe is put in the `hp:potions` storage. eg:  
`data modify storage hp:potions ForgetfulnessPotion set value [1470, 1470, 9999, 2640, 2640, 9999, 9999, 2431, 2431, 1621, 1621, 1621, 1621, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999]`  
The ID for each element is the ingredient ID with a number denoting it's state:  

| State    | ID |
| -------- | -- |
| Normal   | 0  |
| Crushed  | 1  |
| Powdered | 2  |

Heating up the cauldron uses the ID `9999`.

## Generators
Command generators can be found [here](https://lemonhandgrenade.github.io/repos/hp-datapack/generator.html).  
It currently includes a wand generator for both already existing and custom wands.