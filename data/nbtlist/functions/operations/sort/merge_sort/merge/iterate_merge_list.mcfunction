#> operations/sort/merge_sort/merge/iterate_merge_list.mcfuntion
# Iterates over the MergeList, which contains two merged lists.
# The elements in the MergeList lists are appended to the MergedList one by one, until both
# lists in the MergeList are empty.
#
#> Arguments:
#   nbtlist:merge_sort MergeList: the list that contains lists to be merged.

# Get length of lists.
execute store result score #nbtlist.operation.merge_sort.length1 nbtlist.var run data get storage nbtlist:merge_sort MergeList[0]
execute store result score #nbtlist.operation.merge_sort.length2 nbtlist.var run data get storage nbtlist:merge_sort MergeList[1]

# If list1 and list2 are both not empty, compare both elements.
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 1.. if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 1.. run function nbtlist:operations/sort/merge_sort/compare/compare

# If list1 is not empty and list2 is empty, remove the head of list1 and append it to the MergedList.
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 1.. if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 0 run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list1

# If list1 is empty and list2 is not empty, remove the head of list2 and append it to the MergedList.
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 0 if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 1.. run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list2

# If list1 and list2 are empty, stop the iteration.
execute unless data storage nbtlist:merge_sort MergeList[0][0] unless data storage nbtlist:merge_sort MergeList[1][0] run scoreboard players set #nbtlist.operation.merge_sort.stop nbtlist.var 1

# If at least one of the lists is not empty, continue to the next iteration.
execute unless score #nbtlist.operation.merge_sort.stop nbtlist.var matches 1 run function nbtlist:operations/sort/merge_sort/merge/iterate_merge_list