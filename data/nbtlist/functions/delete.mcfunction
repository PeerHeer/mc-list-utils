#> delete.mcfunction
# Call this function to delete from a list.
#
#> Arguments in nbtlist:args:
#   List: list to delete from
#   Data: data to delete from the list
#   Index: index to delete the data at. Ignored when Data is specified.
#> Returns to nbtlist:result:
#   List: the resulting list
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 3 (delete).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 3

# Start list iteration.
function nbtlist:iterator/iterate_start