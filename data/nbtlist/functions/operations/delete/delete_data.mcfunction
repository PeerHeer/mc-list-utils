#> operations/delete/delete_index.mcfunction
# Deletes an entry that matches certain data.
# Appends to nbtlist:iterator ResultList unless the data to delete was found.
#
#> Returns:
#   #nbtlist.operation.stop nbtlist.var: 1 if the operation should stop, 0 otherwise.
#   nbtlist:result Index: the index that the element was deleted at.
#   #nbtlist.operation.result.success nbtlist.var: 1 if operation successful, 0 otherwise.

# Compare the data at Iterable[0] and Args.Data.
function nbtlist:generic/compare_data

# If the data is not equal, append to ResultList. This skips the element to delete and thus effectively deletes it.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 1 run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# Keep appending to the resultlist if the operation stops.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 0 if score #nbtlist.operation.stop nbtlist.var matches 1 run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# Add to count if an element was deleted.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 0 if score #nbtlist.operation.stop nbtlist.var matches 0 run scoreboard players add #nbtlist.operation.result.count nbtlist.var 1

# If the data is equal, set the score #nbtlist.operation.result.success nbtlist.var to 1 and return the current index.
execute if score #nbtlist.operation.stop nbtlist.var matches 0 if score #nbtlist.compare.not_equal nbtlist.var matches 0 store success score #nbtlist.operation.result.success nbtlist.var store result storage nbtlist:result Index int 1.0 run scoreboard players get #nbtlist.iterator.index nbtlist.var

# Set #nbtlist.operation.stop nbtlist.var to 1 if the element was found and #nbtlist.operation.get_first was set.
execute if score #nbtlist.operation.result.success nbtlist.var matches 1 if score #nbtlist.operation.get_first nbtlist.var matches 1 run scoreboard players set #nbtlist.operation.stop nbtlist.var 1
