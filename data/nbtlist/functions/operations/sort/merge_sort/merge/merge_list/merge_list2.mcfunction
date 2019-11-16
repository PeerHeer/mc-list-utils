#> operations/sort/merge_sort/merge/merge_list/merge_list2.mcfunction
# Merges MergeList[1] by appending and removing its head.
#
#> Arguments:
#   nbtlist:merge_sort MergeList[1]: the list that the element is removed from.

data modify storage nbtlist:merge_sort MergedList append from storage nbtlist:merge_sort MergeList[1][0]
data remove storage nbtlist:merge_sort MergeList[1][0]
