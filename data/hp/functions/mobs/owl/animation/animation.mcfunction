execute if block ~ ~-.75 ~ #hp:air if data entity @s {ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:2150}}]} run item replace entity @s armor.head with heart_of_the_sea{CustomModelData:2151}
execute unless block ~ ~-.75 ~ #hp:air if data entity @s {ArmorItems:[{},{},{},{id:"minecraft:heart_of_the_sea",Count:1b,tag:{CustomModelData:2151}}]} run item replace entity @s armor.head with heart_of_the_sea{CustomModelData:2150}

execute store result entity @s Rotation[0] float 1 run data get entity @e[type=minecraft:allay,limit=1,sort=nearest] Rotation[0]