#> prepend.mcfunction
# Call this function to prepend to a list.
#
#> Arguments in nbtlist:args:
#   List: list to prepend to
#   Data: data to prepend to the list
#> Returns to nbtlist:result:
#   List: the resulting list
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 1 (prepend).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 1

# Start list iteration.
function nbtlist:iterator/iterate_start