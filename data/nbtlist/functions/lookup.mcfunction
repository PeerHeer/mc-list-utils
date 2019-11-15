#> lookup.mcfunction
# Call this function to look up an element in a list
#
#> Arguments:
#   nbtlist:args List: list to look up an element in
#   nbtlist:args Data: data to look up
#   nbtlist:args Index: index to look up
#> Returns:
#   nbtlist:result Data: the resulting data
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 4 (lookup).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 4

# Start list iteration.
function nbtlist:iterator/iterate_start