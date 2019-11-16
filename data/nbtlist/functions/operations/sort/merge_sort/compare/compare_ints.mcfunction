execute store result score #nbtlist.operation.merge_sort.value1 nbtlist.var run data get storage nbtlist:merge_sort MergeList[0][0]
execute store result score #nbtlist.operation.merge_sort.value2 nbtlist.var run data get storage nbtlist:merge_sort MergeList[1][0]

execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var < #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var -1
execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var = #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var 0
execute if score #nbtlist.operation.merge_sort.value1 nbtlist.var > #nbtlist.operation.merge_sort.value2 nbtlist.var run scoreboard players set #nbtlist.operation.merge_sort.compare nbtlist.var 1