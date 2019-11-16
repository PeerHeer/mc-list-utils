#> operations/sort/merge_sort/compare/compare.mcfunction
# Compares two elements to merge according to a comparison function.
# Merges two elements according to the comparison.

# Set the elements to compare into the Compare tag in nbtlist:compare.
data modify storage nbtlist:compare Compare set value []
data modify storage nbtlist:compare Compare append from storage nbtlist:merge_sort MergeList[0][0]
data modify storage nbtlist:compare Compare append from storage nbtlist:merge_sort MergeList[1][0]

# Compare values using the specified comparison function.
function nbtlist:comparison_functions/main

# If the compare function returned -1 or 0, then the left element is smaller: remove the head of list1 and append it to the MergedList.
execute if score #nbtlist.compare.result nbtlist.var matches -1..0 run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list1

# If the compare function returned 1, then the right element is smaller: remove the head of list2 and append it to the MergedList.
execute if score #nbtlist.compare.result nbtlist.var matches 1 run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list2