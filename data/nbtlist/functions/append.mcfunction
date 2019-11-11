#> append.mcfunction
# Call this function to append to a list.
#
#> Arguments in nbtlist:args:
#   List: list to append to
#   Data: data to append to the list
#> Returns to nbtlist:result:
#   List: the resulting list
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 0 (append).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 0

# Start list iteration.
function nbtlist:iterator/iterate_start