#> setup/scoreboard/objectives.mcfunction
# Setup the nbtlist.var and nbtlist.const objective.

# nbtlist.var objectives. Used for mutable variables.
scoreboard objectives add nbtlist.var dummy

# nbtlist.const objectives. Used for constant variables.
scoreboard objectives add nbtlist.const dummy

# Initialize the #nbtlist.compare.function variable to 0 (compare integers).
scoreboard players set #nbtlist.compare.function nbtlist.var 0