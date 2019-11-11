#> insert.mcfunction
# Call this function to insert into a list.
#
#> Arguments in nbtlist:args:
#   List: list to insert into
#   Data: data to insert into the list
#   Index: index to insert the data at
#> Returns to nbtlist:result:
#   List: the resulting list
#   Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 2 (insert).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 2

# Start list iteration.
function nbtlist:iterator/iterate_start