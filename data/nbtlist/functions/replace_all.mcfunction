#> replace_all.mcfunction
# Call this function to replace alle elements in a list that match Data2.
#
#> Arguments:
#   nbtlist:args List: list to replace an element in
#   nbtlist:args Data: data to replace element with
#   nbtlist:args Index: index to replace
#   nbtlist:args Data2: data to replace
#> Returns:
#   nbtlist:result List: the resulting list
#   nbtlist:result Success: 1b if operation was successful, 0b otherwise

# Sets operation type to 8 (replace).
scoreboard players set #nbtlist.iterator.operation nbtlist.var 8
scoreboard players set #nbtlist.operation.get_first nbtlist.var 0

# Start list iteration.
function nbtlist:iterator/iterate_start