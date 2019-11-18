#> setup/scoreboard/variables.mcfunction
# Sets up the required variables.

# Maximum int value.
scoreboard players set #nbtlist.int_max nbtlist.const 2147483647

# Scale factor for comparing floating point numbers.
scoreboard players set #nbtlist.compare.float.scale nbtlist.const 10

# Variable that determines the comparison function to be used.
scoreboard players set #nbtlist.compare.function nbtlist.var 0

# Variable that regulates when iteration stops.
scoreboard players set #nbtlist.iterator.stop nbtlist.var 0