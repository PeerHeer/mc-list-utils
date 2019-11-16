#> min.mcfunction
# Call this function to find the minimum value in a list.
#
#> Arguments:
#   nbtlist:args List: list to find the minimum element in
#> Returns:
#   nbtlist:result Data: the minimum element
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 11 (min).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 11

# Start list iteration.
function nbtlist:iterator/iterate_start

# Reset the #nbtlist.compare.function function.
scoreboard players set #nbtlist.compare.function nbtlist.var 0