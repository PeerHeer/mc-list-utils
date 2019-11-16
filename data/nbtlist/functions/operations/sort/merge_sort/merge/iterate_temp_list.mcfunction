#> operations/sort/merge_sort/merge/iterate_temp_list.mcfunction
# Iterates over the TempList, which contains all merged lists.
# Merged lists are appended to ResultList.
#
#> Arguments:
#   nbtlist:merge_sort TempList: the list that temporarily stores merged lists.

# Initialize empty MergeList: list that contains two merged lists.
data modify storage nbtlist:merge_sort MergeList set value []

# Get the length of TempList.
execute store result score #nbtlist.operation.merge_sort.length nbtlist.var run data get storage nbtlist:merge_sort TempList

# If only one list remains, append it to the ResultList.
execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort ResultList append from storage nbtlist:merge_sort TempList[0]

# If two lists remain, merge them.
execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 2.. run function nbtlist:operations/sort/merge_sort/merge/merge_lists_start

# Delete the head of TempList.
data remove storage nbtlist:merge_sort TempList[0]

# If the TempList is empty, the result is checked (if it is sorted).
execute unless data storage nbtlist:merge_sort TempList[0] run function nbtlist:operations/sort/merge_sort/merge/check_result

# If the TempList is not empty, start a new iteration.
execute if data storage nbtlist:merge_sort TempList[0] run function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list