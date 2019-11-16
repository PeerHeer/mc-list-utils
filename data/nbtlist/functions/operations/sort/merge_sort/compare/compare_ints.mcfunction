#> operations/sort/merge_sort/compare/compare.mcfunction
# Compare two integers.
#
#> Arguments:
#   nbtlist:merge_sort MergeList: contains the elements to compare.
#> Returns:
#   #nbtlist.operation.merge_sort.compare nbtlist.var: -1 if the left value is smaller, 0 if the values are equal, 1 if the right value is smaller.

# Store the elements to compare in scores.
execute store result score #nbtlist.operation.merge_sort.value1 nbtlist.var run data get storage nbtlist:merge_sort MergeList[0][0]
execute store result score #nbtlist.operation.merge_sort.value2 nbtlist.var run data get storage nbtlist:merge_sort MergeList[1][0]

# Return the result.
execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var < #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var -1
execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var = #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var 0
execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var > #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var 1