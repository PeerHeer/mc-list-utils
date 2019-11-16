#> operations/sort/merge_sort/merge/check_result.mcfunction
# Checks the ResultList that resulted from the merge operation.
# If only one list remains (length is 1), the ResultList is the final result of the merge sort.
# If more than one list remains, the ResultList is copied to TempList and the merge operation starts again.
#
#> Arguments:
#   nbtlist:merge_sort ResultList: the resulting
#> Returns
#   nbtlist:result List: the final sorted list.

# Get ResultList length.
execute store result score #nbtlist.operation.merge_sort.length nbtlist.var run data get storage nbtlist:merge_sort ResultList

# Transfer result to nbtlist:result List.
execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:result List set from storage nbtlist:merge_sort ResultList[0]

# If length is not 1, copy ResultList to TempList and restart the merge operation.
execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort TempList set from storage nbtlist:merge_sort ResultList
execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort ResultList set value []
execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list