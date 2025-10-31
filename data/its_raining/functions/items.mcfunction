gamemode adventure @a

kill @e[tag=its_raining_player]
execute at @a run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["its_raining_player"]}

clear @a
give @a minecraft:water_bucket{ItsRainingStart:1b,display:{Name:'{"text":"DROP TO START!","italic":false,"bold":true,"color":"yellow"}'},Enchantments:[{}]}
give @a minecraft:book{ItsRainingDisplay:0b,display:{Name:'[{"text":"Display Info: ","italic":false,"color":"aqua"},{"text":"OFF","bold":true,"color":"red"}]',Lore:['{"text":"Drop to switch","color":"yellow"}']}}
