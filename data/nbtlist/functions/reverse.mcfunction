#> reverse.mcfunction
# Call this function to reverse a list.
#
#> Arguments:
#   nbtlist:args List: list to reverse
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 6 (reverse).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 6

# Start list iteration.
function nbtlist:iterator/iterate_start