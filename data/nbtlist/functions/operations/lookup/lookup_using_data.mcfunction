#> operations/lookup/delete_index.mcfunction
# Looks up an entry that matches certain data.
#
#> Arguments:
#   #nbtlist.iterator.index nbtlist.var: current iterator index.
#> Returns:
#   nbtlist:result Index: index the element was found at.
#   #nbtlist.operation.result.success nbtlist.var: 1 if operation successful, 0 otherwise.

# Compare the data at Iterable[0] and Args.Data.
function nbtlist:generic/compare_data

# If the data is equal, set the score #nbtlist.operation.result.success nbtlist.var to 1.
execute if score #nbtlist.compare.result nbtlist.var matches 0 run scoreboard players set #nbtlist.operation.result.success nbtlist.var 1

# If data is equal, return the index.
execute if score #nbtlist.compare.result nbtlist.var matches 0 store result storage nbtlist:result Index int 1.0 run scoreboard players get #nbtlist.iterator.index nbtlist.var
execute if score #nbtlist.compare.result nbtlist.var matches 0 run data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]

# If data is equal, stop the iteration.
execute if score #nbtlist.compare.result nbtlist.var matches 0 run scoreboard players set #nbtlist.iterator.stop nbtlist.var 1
