execute if score active raining_water matches 1 if score bottom raining_water matches ..254 run scoreboard players add timer raining_water 1

execute if score timer raining_water >= speed raining_water run scoreboard players add bottom raining_water 1

execute if score timer raining_water >= speed raining_water as @e[tag=its_raining_down] run function its_raining:set_height

execute if score timer raining_water >= speed raining_water run scoreboard players set timer raining_water 0
