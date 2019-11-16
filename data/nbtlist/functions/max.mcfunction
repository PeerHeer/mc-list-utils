#> max.mcfunction
# Call this function to find the maximum value in a list.
#
#> Arguments:
#   nbtlist:args List: list to find the maximum element in
#> Returns:
#   nbtlist:result Data: the maximum element
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 10 (max).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 10

# Start list iteration.
function nbtlist:iterator/iterate_start

# Reset the #nbtlist.compare.function function.
scoreboard players set #nbtlist.compare.function nbtlist.var 0