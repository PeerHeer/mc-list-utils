#> operations/sort/merge_sort/sort_start.mcfunction
# Start merge sort by first decomposing the list into lists of one element.
#
#> Returns:
#   nbtlist:result List: the sorted list.
#   nbtlist:result Success: if the operation was successful.

# Decompose the list.
scoreboard players set #nbtlist.iterator.operation nbtlist.var 99
function nbtlist:iterator/iterate_start

# Merge lists until one list remains.
data modify storage nbtlist:merge_sort ResultList set value []
function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list

# Return the resulting list and Success.
data modify storage nbtlist:result List set from storage nbtlist:merge_sort ResultList[0]
data modify storage nbtlist:result Success set value 1b