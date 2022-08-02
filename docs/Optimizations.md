## Optimisations

This page is more for what is the most expensive on the server / client.

### Brooms

Brooms are quite costly because a lot of commands are used to run them.  
This equation shows the extra milliseconds it takes to use brooms.

![broom_equation](http://www.sciweavers.org/tex2img.php?eq=T_%7Bms%7D%3D%281.25%2AB_a%29%2B%280.15%2A%5BB_a%2BB_i%5D%29&bc=White&fc=Black&im=jpg&fs=12&ff=modern&edit=)

Where B = Brooms  
and a = Active brooms (being flown)  
and i = Inactive brooms (on the ground)

### Amimagi

Animagi don't have a noticeable effect on the tick rate unless they are in a transformed state.  

![animagi_equation](http://www.sciweavers.org/tex2img.php?eq=T_%7Bms%7D%3D%280.55%2At%29&bc=White&fc=Black&im=jpg&fs=12&ff=modern&edit=)

Where t = transformed animagi

### Werewolves

Werewolves are only costly when they are being controlled by the player due to Wolfsbane.  

![werewolf_equation](http://www.sciweavers.org/tex2img.php?eq=T_%7Bms%7D%3DW_c%2B%28.15%2AW_t%29&bc=White&fc=Black&im=jpg&fs=12&ff=modern&edit=)

Where W = Werewolves present
and c = controlled werewolves
and t = transformed werewolves

### The Worst Function

`hp:player/get_motion` is a pain.  
This function calculates the players motion and stores it as there Y score.  
This is the only way to get the length of the motion vector because of [MC-122814](https://bugs.mojang.com/browse/MC-122814) which is considered resolved

The contents of the get_motion file are 10 lines of code which do take up considerable time:

```mcfunction
scoreboard players operation @s X = @s motionX
scoreboard players operation @s Z = @s motionZ

execute store result score @s motionX run data get entity @s Pos[0] 100
execute store result score @s motionZ run data get entity @s Pos[2] 100

scoreboard players operation @s X -= @s motionX
scoreboard players operation @s Z -= @s motionZ

scoreboard players operation @s X *= @s X
scoreboard players operation @s Z *= @s Z

scoreboard players operation @s Y = @s X
scoreboard players operation @s Y += @s Z
```

These operations are unfortunately quite costly.