execute if score active raining_water matches 1 run function its_raining:summon
execute if score active raining_water matches 0 as @a at @s positioned as @e[tag=its_raining_player,sort=nearest,limit=1] run teleport ~ ~ ~
execute if score active raining_water matches 0 run effect give @a minecraft:saturation 1 255 true

execute if score active raining_water matches 1 at @e[tag=its_raining_down] run function its_raining:fill

execute at @e[tag=its_raining_barrier] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air
execute if score active raining_water matches 1 at @a align xyz positioned ~0.5 319 ~0.5 unless entity @e[tag=its_raining_barrier,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["its_raining_barrier"]}
execute if score active raining_water matches 1 at @a align xyz run fill ~-0.5 319 ~-0.5 ~1.5 319 ~1.5 minecraft:barrier
execute as @e[tag=its_raining_barrier] at @s unless block ~ ~ ~ minecraft:barrier run kill
