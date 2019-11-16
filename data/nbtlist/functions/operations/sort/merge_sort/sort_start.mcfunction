#> operations/sort/merge_sort/sort_start.mcfunction

scoreboard players set #nbtlist.iterator.operation nbtlist.var 99
function nbtlist:iterator/iterate_start
data modify storage nbtlist:merge_sort ResultList set value []
function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list
data modify storage nbtlist:result List set from storage nbtlist:merge_sort ResultList[0]