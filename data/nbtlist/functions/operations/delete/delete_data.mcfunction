#> operations/delete/delete_index.mcfunction
# Deletes an entry that matches certain data.
#
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: 1 if operation successful, 0 otherwise.

# Compare the data at Iterable[0] and Args.Data.
function nbtlist:generic/compare_data

# If the data is not equal, append to ResultList. This skips the element to delete and thus effectively deletes it.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 1 run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# If the data is equal, set the score #nbtlist.operation.result.success nbtlist.var to 1.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 0 store success score #nbtlist.operation.result.success nbtlist.var store result storage nbtlist:result Index int 1.0 run scoreboard players get #nbtlist.iterator.index nbtlist.var
