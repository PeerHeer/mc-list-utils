#> slice.mcfunction
# Call this function to slice a list.
#
#> Arguments in nbtlist:args:
#   List: list to slice
#   Index: smallest index of the slice, inclusive.
#   Index2: largest index of the slice, exclusive.
#> Returns to nbtlist:result:
#   List: the resulting slice of the list
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 7 (slice).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 7

# Start list iteration.
function nbtlist:iterator/iterate_start