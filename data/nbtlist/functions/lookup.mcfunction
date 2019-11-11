#> lookup.mcfunction
# Call this function to look up an element in a list
#
#> Arguments in nbtlist:args:
#   List: list to look up an element in
#   Data: data to look up
#   Index: index to look up
#> Returns to nbtlist:result:
#   Data: the resulting data
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 4 (lookup).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 4

# Start list iteration.
function nbtlist:iterator/iterate_start