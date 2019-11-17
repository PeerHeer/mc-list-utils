#> operations/count/count_elements.mcfunction
# Counts all entries that match the data.
#
#> Arguments:
#   #nbtlist.iterator.index nbtlist.var: current iterator index.
#> Returns:
#   nbtlist:result Count:
#   #nbtlist.operation.result.success nbtlist.var: 1 if operation successful, 0 otherwise.

# Compare the data at Iterable[0] and Args.Data.
function nbtlist:generic/compare_data

# If the data is equal, set the score #nbtlist.operation.result.success nbtlist.var to 1.
execute if score #nbtlist.compare.result nbtlist.var matches 0 store success score #nbtlist.operation.result.success nbtlist.var run scoreboard players add #nbtlist.operation.result.count nbtlist.var 1
