execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run clear @a
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run scoreboard players set active raining_water 1
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run gamemode survival @a
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run recipe take @a *
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run gamerule doWeatherCycle false
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run weather rain
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run data modify storage one_nose:its_raining loaded set value 1b
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}] run kill @e[tag=its_raining_player]

kill @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingStart:1b}}}]
