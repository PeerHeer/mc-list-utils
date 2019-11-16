data modify storage nbtlist:merge_sort MergeList set value []

execute store result score #nbtlist.operation.merge_sort.length nbtlist.var run data get storage nbtlist:merge_sort TempList
# tellraw @p ["",{"text":"TempList: "},{"nbt":"TempList","storage":"nbtlist:merge_sort"}]
# tellraw @p ["",{"text":"TempList length: "},{"score":{"name":"#nbtlist.operation.merge_sort.length","objective":"nbtlist.var"}}]

execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort ResultList append from storage nbtlist:merge_sort TempList[0]
execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 2.. run function nbtlist:operations/sort/merge_sort/merge/merge_lists_start

data remove storage nbtlist:merge_sort TempList[0]

execute unless data storage nbtlist:merge_sort TempList[0] run function nbtlist:operations/sort/merge_sort/merge/check_result
execute if data storage nbtlist:merge_sort TempList[0] run function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list