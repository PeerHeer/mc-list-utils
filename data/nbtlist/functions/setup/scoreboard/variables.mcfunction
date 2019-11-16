#> setup/scoreboard/constants.mcfunction
# Sets up the required constants.

# Set maximum int value constant.
scoreboard players set #nbtlist.int_max nbtlist.const 2147483647

# Initialize the #nbtlist.compare.function variable to 0 (compare integers).
scoreboard players set #nbtlist.compare.function nbtlist.var 0