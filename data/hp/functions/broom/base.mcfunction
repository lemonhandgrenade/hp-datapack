tag @s add activeBroomElytra
#execute at @s as @a[tag=flyingBroom] if score @s broomID = @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] broomID run tag @e[type=armor_stand,tag=activeBroomElytra,limit=1,sort=nearest] add isBeingRidden
#execute at @s if score @s broomID = @p[tag=flyingBroom] broomID run tag @s add isBeingRidden
execute at @s if score @s broomID = @e[type=pig,tag=broomSaddle,distance=..2,sort=nearest,predicate=hp:has_passenger,limit=1] broomID run tag @s add isBeingRidden
#item replace entity @s[tag=isBeingRidden] armor.chest with elytra


# Reset Visuals
#execute at @s if entity @p[tag=flyingBroom] as @e[type=armor_stand,tag=broomVisual,tag=broom,limit=1,sort=nearest] if score @s broomID = @e[type=armor_stand,tag=activeBroomElytra,tag=broom,limit=1,sort=nearest] broomID run tp @s ~ ~ ~ ~ ~
#execute at @s as @e[type=armor_stand,tag=broomVisual,tag=broom] if score @s broomID = @e[type=armor_stand,tag=activeBroomElytra,tag=broom,limit=1,sort=nearest] broomID run tp @s ~ ~ ~ ~ ~
#data merge entity @s[tag=isBeingRidden] {FallDistance:0f,FallFlying:1b}

execute if entity @s[tag=isBeingRidden] run item replace entity @s armor.chest with elytra
execute if entity @s[tag=!isBeingRidden] run item replace entity @s armor.chest with air

# Pig In Water
#execute unless score @s values matches 1.. at @s unless entity @e[type=armor_stand,predicate=hp:has_passenger,tag=broom,tag=broomVisual,limit=1,sort=nearest] run function hp:broom/end
#execute unless score @s values matches 1.. at @s if entity @e[type=armor_stnad,tag=broom,tag=broomVisual,predicate=hp:has_passenger,limit=1,sort=nearest] run function hp:broom/end
execute unless score @s values matches 1.. at @s as @e[type=armor_stand,tag=broom,tag=broomVisual,sort=nearest,limit=3] if score @s broomID = #current broomID unless predicate hp:has_passenger as @e[type=armor_stand,tag=broomElytra,limit=1,sort=nearest] run function hp:broom/end

tag @s remove activeBroomElytra
execute if score @s values matches 2 at @s run function hp:broom/remove_broom

tag @s remove isBeingRidden