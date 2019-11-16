#> replace.mcfunction
# Call this function to replace an element in a list
#
#> Arguments:
#   nbtlist:args List: list to replace an element in
#   nbtlist:args Data: data to replace
#   nbtlist:args Index: index to replace
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 8 (replace).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 8

# Start list iteration.
function nbtlist:iterator/iterate_start