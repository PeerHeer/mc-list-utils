#> slice.mcfunction
# Call this function to slice a list.
#
#> Arguments:
#   nbtlist:args List: list to slice
#   nbtlist:args Index: smallest index of the slice, inclusive.
#   nbtlist:args Index2: largest index of the slice, exclusive.
#> Returns:
#   nbtlist:result List: the resulting slice of the list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 7 (slice).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 7

# Start list iteration.
function nbtlist:iterator/iterate_start