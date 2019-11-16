#> operations/sort/merge_sort/merge/merge_lists_start.mcfunction
# Initializes the merging of two MergedLists in MergeList.
# After merging, the new MergedList is appended to the ResultList.

# Initialize MergeList.
data modify storage nbtlist:merge_sort MergeList append from storage nbtlist:merge_sort TempList[0]
data modify storage nbtlist:merge_sort MergeList append from storage nbtlist:merge_sort TempList[1]

# Initialize MergedList.
data modify storage nbtlist:merge_sort MergedList set value []

# Remove the TempList head.
data remove storage nbtlist:merge_sort TempList[0]

# Call the iterator that merges the lists.
scoreboard players set #nbtlist.operation.merge_sort.stop nbtlist.var 0
function nbtlist:operations/sort/merge_sort/merge/iterate_merge_list

# Append the MergedList to the ResultList.
data modify storage nbtlist:merge_sort ResultList append from storage nbtlist:merge_sort MergedList

