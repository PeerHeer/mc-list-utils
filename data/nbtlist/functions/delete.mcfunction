#> delete.mcfunction
# Call this function to delete from a list.
#
#> Arguments:
#   nbtlist:args List: list to delete from
#   nbtlist:args Data: data to delete from the list
#   nbtlist:args Index: index to delete the data at. Ignored when Data is specified.
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 3 (delete).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 3

# Start list iteration.
function nbtlist:iterator/iterate_start