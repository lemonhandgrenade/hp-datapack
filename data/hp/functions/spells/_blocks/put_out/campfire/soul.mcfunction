execute if score #temp values matches 1 if score #temp values matches 0 run setblock ~ ~ ~ soul_campfire[facing=north,lit=false,signal_fire=false]
execute if score #temp values matches 1 if score #temp values matches 1 run setblock ~ ~ ~ soul_campfire[facing=north,lit=false,signal_fire=true]
execute if score #temp values matches 2 if score #temp values matches 0 run setblock ~ ~ ~ soul_campfire[facing=south,lit=false,signal_fire=false]
execute if score #temp values matches 2 if score #temp values matches 1 run setblock ~ ~ ~ soul_campfire[facing=south,lit=false,signal_fire=true]
execute if score #temp values matches 3 if score #temp values matches 0 run setblock ~ ~ ~ soul_campfire[facing=east,lit=false,signal_fire=false]
execute if score #temp values matches 3 if score #temp values matches 1 run setblock ~ ~ ~ soul_campfire[facing=east,lit=false,signal_fire=true]
execute if score #temp values matches 4 if score #temp values matches 0 run setblock ~ ~ ~ soul_campfire[facing=west,lit=false,signal_fire=false]
execute if score #temp values matches 4 if score #temp values matches 1 run setblock ~ ~ ~ soul_campfire[facing=west,lit=false,signal_fire=true]