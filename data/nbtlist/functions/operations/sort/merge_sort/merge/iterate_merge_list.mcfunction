scoreboard players set #nbtlist.operation.merge_sort.stop nbtlist.var 0
# tellraw @p ["",{"text":"Iterate stop: "},{"score":{"name":"#nbtlist.operation.merge_sort.stop","objective":"nbtlist.var"}}]

# Get length of lists.
execute store result score #nbtlist.operation.merge_sort.length1 nbtlist.var run data get storage nbtlist:merge_sort MergeList[0]
execute store result score #nbtlist.operation.merge_sort.length2 nbtlist.var run data get storage nbtlist:merge_sort MergeList[1]

# while A is not empty and B is not empty do
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 1.. if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 1.. run function nbtlist:operations/sort/merge_sort/compare/compare

# while A is not empty and B is empty do
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 1.. if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 0 run data modify storage nbtlist:merge_sort MergedList append from storage nbtlist:merge_sort MergeList[0][0]
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 1.. if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 0 run data remove storage nbtlist:merge_sort MergeList[0][0]
# while B is not empty and A is empty do
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 0 if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 1.. run data modify storage nbtlist:merge_sort MergedList append from storage nbtlist:merge_sort MergeList[1][0]
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 0 if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 1.. run data remove storage nbtlist:merge_sort MergeList[1][0]

# Exit condition: if lengths are 0, exit.
execute if score #nbtlist.operation.merge_sort.length1 nbtlist.var matches 0 run scoreboard players add #nbtlist.operation.merge_sort.stop nbtlist.var 1
execute if score #nbtlist.operation.merge_sort.length2 nbtlist.var matches 0 run scoreboard players add #nbtlist.operation.merge_sort.stop nbtlist.var 1
# tellraw @p ["",{"text":"MergeList: "},{"nbt":"MergeList","storage":"nbtlist:merge_sort"}]
# tellraw @p ["",{"text":"Iterate stop: "},{"score":{"name":"#nbtlist.operation.merge_sort.stop","objective":"nbtlist.var"}}]
# tellraw @p ["",{"text":"MergeList0 length: "},{"score":{"name":"#nbtlist.operation.merge_sort.length1","objective":"nbtlist.var"}}]
# tellraw @p ["",{"text":"MergeList1 length: "},{"score":{"name":"#nbtlist.operation.merge_sort.length2","objective":"nbtlist.var"}}]
# tellraw @p ["",{"text":"MergedList: "},{"nbt":"MergedList","storage":"nbtlist:merge_sort"}]
execute unless score #nbtlist.operation.merge_sort.stop nbtlist.var matches 2 run function nbtlist:operations/sort/merge_sort/merge/iterate_merge_list