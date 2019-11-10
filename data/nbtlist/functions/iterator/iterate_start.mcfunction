# Initialize index and success variables.
scoreboard players set #nbtlist.iterator.index nbtlist.var -1
scoreboard players set #nbtlist.operation.success nbtlist.var 0
scoreboard players set #nbtlist.iterator.stop nbtlist.var 0

# Load the list to iterate over.
data modify storage nbtlist:iterator Iterable set from storage nbtlist:operation List

# Check type of operation and load the appropriate parameters.
# 0: append
# 1: prepend
# 2: insert
# 3: delete
# 4: lookup
# 5: merge
execute if score #nbtlist.iterator.operation nbtlist.var matches 0 run function nbtlist:operations/append/append_to_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 1 run function nbtlist:operations/prepend/prepend_to_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 2 run function nbtlist:operations/insert/load_params
execute if score #nbtlist.iterator.operation nbtlist.var matches 3 run function nbtlist:operations/delete/load_params
execute if score #nbtlist.iterator.operation nbtlist.var matches 4 run function nbtlist:operations/lookup/load_params
execute if score #nbtlist.iterator.operation nbtlist.var matches 5 run function nbtlist:operations/merge/load_params

# Start iteration if the operation is not append or prepend.
execute if score #nbtlist.iterator.operation nbtlist.var matches 2.. run function nbtlist:iterator/iterate

# Reset storage and variables.
data modify storage nbtlist:operation Params set from storage nbtlist:format Operation.Params
data modify storage nbtlist:iterator Iterable set value []
data remove storage nbtlist:iterator Params
scoreboard players reset #nbtlist.iterator.operation nbtlist.var