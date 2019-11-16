data modify storage nbtlist:merge_sort MergeList append from storage nbtlist:merge_sort TempList[0]
data modify storage nbtlist:merge_sort MergeList append from storage nbtlist:merge_sort TempList[1]
data remove storage nbtlist:merge_sort TempList[0]
# tellraw @p ["",{"text":"MergeList: "},{"nbt":"MergeList","storage":"nbtlist:merge_sort"}]

data modify storage nbtlist:merge_sort MergedList set value []
# Go to merge loop
function nbtlist:operations/sort/merge_sort/merge/iterate_merge_list


# tellraw @p ["",{"text":"MergedList after: "},{"nbt":"MergedList","storage":"nbtlist:merge_sort"}]
# tellraw @p ["",{"text":"ResultList before: "},{"nbt":"ResultList","storage":"nbtlist:merge_sort"}]
data modify storage nbtlist:merge_sort ResultList append from storage nbtlist:merge_sort MergedList
# tellraw @p ["",{"text":"ResultList after: "},{"nbt":"ResultList","storage":"nbtlist:merge_sort"}]

