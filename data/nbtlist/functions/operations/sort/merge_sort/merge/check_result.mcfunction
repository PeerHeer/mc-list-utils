execute store result score #nbtlist.operation.merge_sort.length nbtlist.var run data get storage nbtlist:merge_sort ResultList
# tellraw @p ["",{"text":"ResultList: "},{"nbt":"ResultList","storage":"nbtlist:merge_sort"}]
# tellraw @p ["",{"text":"ResultList length: "},{"score":{"name":"#nbtlist.operation.merge_sort.length","objective":"nbtlist.var"}}]

execute if score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:result List set from storage nbtlist:merge_sort ResultList[0]

execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort TempList set from storage nbtlist:merge_sort ResultList
execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run data modify storage nbtlist:merge_sort ResultList set value []
execute unless score #nbtlist.operation.merge_sort.length nbtlist.var matches 1 run function nbtlist:operations/sort/merge_sort/merge/iterate_temp_list