function nbtlist:operations/sort/merge_sort/compare/compare_ints

# if head(A) ≤ head(B) then
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches -1..0 run data modify storage nbtlist:merge_sort MergedList append from storage nbtlist:merge_sort MergeList[0][0]
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches -1..0 run data remove storage nbtlist:merge_sort MergeList[0][0]
# else
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches 1 run data modify storage nbtlist:merge_sort MergedList append from storage nbtlist:merge_sort MergeList[1][0]
execute if score #nbtlist.operation.merge_sort.compare nbtlist.var matches 1 run data remove storage nbtlist:merge_sort MergeList[1][0]