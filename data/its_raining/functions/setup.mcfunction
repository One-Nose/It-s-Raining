scoreboard objectives add raining_water dummy "It's Raining!"

scoreboard players set bottom raining_water 0

scoreboard players reset timer raining_water
scoreboard players set speed raining_water 1200
scoreboard players set active raining_water 0

schedule function its_raining:items 1s
