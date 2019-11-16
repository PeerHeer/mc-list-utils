#> iterator/iterate_start.mcfucntion
# Initializes and destorys the iterator.
#
#> Arguments:
#   #nbtlist.iterator.operation nbtlist.var: the type of operation to execute.
#> Returns:
#   nbtlist:result List: the list resulting from the operation.
#   nbtlist:result Success: 1b if the operation was successful, 0b otherwise.
#   #nbtlist.operation.result.success nbtlist.var: 1 if the operation was successful, 0 otherwise.

# Initialize index & success variables.
scoreboard players set #nbtlist.iterator.index nbtlist.var -1
scoreboard players set #nbtlist.operation.result.success nbtlist.var 0

# Initialize operation stop to 0.
scoreboard players set #nbtlist.operation.stop nbtlist.var 0

# Initialize the count to 0.
scoreboard players set #nbtlist.operation.result.count nbtlist.var 0

# Reset the nbtlist:result storage to clear results for the operation.
function nbtlist:setup/storage/result

# Check type of operation and load the appropriate arguments.
# Execute operation immediately if it is append or prepend.
# 2: insert
# 3: delete
# 4: lookup
# 5: extend
# 6: reverse
# 7: slice
# 8: replace
# 9: count
# 99: decomposition into individual lists
execute if score #nbtlist.iterator.operation nbtlist.var matches 2 run function nbtlist:operations/insert/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 3 run function nbtlist:operations/delete/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 4 run function nbtlist:operations/lookup/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 5 run function nbtlist:operations/extend/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 7 run function nbtlist:operations/slice/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 8 run function nbtlist:operations/replace/get_args
execute if score #nbtlist.iterator.operation nbtlist.var matches 9 run function nbtlist:operations/count/get_args

# Load the list to iterate over into Iterable.
data modify storage nbtlist:iterator Iterable set from storage nbtlist:args List

# Start iteration if the operation is not append or prepend.
execute if score #nbtlist.iterator.stop nbtlist.var matches 0 run function nbtlist:iterator/iterate

# Return the resulting list.
data modify storage nbtlist:result List set from storage nbtlist:iterator ResultList
# Return the success of the operation.
execute store result storage nbtlist:result Success byte 1.0 run scoreboard players get #nbtlist.operation.result.success nbtlist.var
# Return the count of the operation.
execute store result storage nbtlist:result Count int 1.0 run scoreboard players get #nbtlist.operation.result.count nbtlist.var

# Reset nbtlist:args storage.
function nbtlist:setup/storage/args

# Reset the nbtlist:iterator storage.
data modify storage nbtlist:iterator Iterable set from storage nbtlist:format Iterator.Iterable
data modify storage nbtlist:iterator ResultList set from storage nbtlist:format Iterator.ResultList
data remove storage nbtlist:iterator Args

# Reset the operation type.
scoreboard players reset #nbtlist.iterator.operation nbtlist.var
# Reset stop.
scoreboard players set #nbtlist.iterator.stop nbtlist.var 0