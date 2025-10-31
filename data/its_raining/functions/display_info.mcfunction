execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:1b}}}] run clear @a minecraft:book
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:1b}}}] at @a run summon minecraft:item ~ ~ ~ {Tags:["its_raining_summoned"],Item:{id:"minecraft:book",Count:1b,tag:{ItsRainingDisplay:0b,display:{Name:'[{"text":"Display Info: ","italic":false,"color":"aqua"},{"text":"OFF","bold":true,"color":"red"}]',Lore:['{"text":"Drop to switch","color":"yellow"}']}}}}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:1b}}}] run scoreboard objectives setdisplay sidebar
kill @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:1b}}}]

execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:0b}}},tag=!its_raining_summoned] run clear @a minecraft:book
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:0b}}},tag=!its_raining_summoned] run give @a minecraft:book{ItsRainingDisplay:1b,Enchantments:[{}],display:{Name:'[{"text":"Display Info: ","italic":false},{"text":"ON","bold":true,"color":"green"}]',Lore:['{"text":"Drop to switch","color":"yellow"}']}}
execute if entity @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:0b}}},tag=!its_raining_summoned] run scoreboard objectives setdisplay sidebar raining_water
kill @e[type=minecraft:item,nbt={Item:{tag:{ItsRainingDisplay:0b}}},tag=!its_raining_summoned]
