#> count.mcfunction
# Call this function to count the matching elements in a list.
#
#> Arguments:
#   nbtlist:args List: list to count an element from
#   nbtlist:args Data: data to count
#> Returns:
#   nbtlist:result Count: the resulting count
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 9 (count).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 9

# Start list iteration.
function nbtlist:iterator/iterate_start