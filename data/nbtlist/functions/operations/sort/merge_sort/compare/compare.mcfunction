#> operations/sort/merge_sort/compare/compare.mcfunction
# Compares two elements to merge according to a comparison function.

#TODO: add support for custom comparison functions

# Comparison function that compares ints.
function nbtlist:operations/sort/merge_sort/compare/compare_ints

# If the compare function returned -1 or 0, then the left element is smaller: remove the head of list1 and append it to the MergedList.
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches -1..0 run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list1

# If the compare function returned 1, then the right element is smaller: remove the head of list2 and append it to the MergedList.
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches 1 run function nbtlist:operations/sort/merge_sort/merge/merge_list/merge_list2