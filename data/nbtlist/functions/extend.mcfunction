#> extend.mcfunction
# Call this function to extend a list.
#
#> Arguments:
#   nbtlist:args List: list to extend
#   nbtlist:args List2: list to add
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 5 (extend).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 5

# Start list iteration.
function nbtlist:iterator/iterate_start