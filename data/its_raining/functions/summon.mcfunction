execute at @a align xz positioned ~ -64 ~ unless entity @e[tag=its_raining_marker,distance=..24] run summon minecraft:armor_stand ~ ~ ~ {Tags:["its_raining_marker","its_raining_marker_new"],Invisible:1b,Marker:1b}

execute at @e[tag=its_raining_marker_new] run summon minecraft:armor_stand ~ ~ ~ {Tags:["its_raining_down","its_raining_down_new"],Invisible:1b,Marker:1b}
execute as @e[tag=its_raining_down_new] run function its_raining:set_height
tag @e remove its_raining_down_new

tag @e remove its_raining_marker_new
