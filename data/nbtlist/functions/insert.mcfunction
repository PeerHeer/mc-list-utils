#> insert.mcfunction
# Call this function to insert into a list.
#
#> Arguments:
#   nbtlist:args List: list to insert into
#   nbtlist:args Data: data to insert into the list
#   nbtlist:args Index: index to insert the data at
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 2 (insert).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 2

# Start list iteration.
function nbtlist:iterator/iterate_start