#> operations/delete/delete_index.mcfunction
# Deletes an entry at a certain index.
# Appends to nbtlist:iterator ResultList unless the index to delete at was found.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to delete at.
#> Returns:
#   nbtlist:result Data: the data that was deleted.
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# As long as index is not found, append to ResultList. This skips the appending of the element at the index to delete and thus effectively deletes it.
execute unless score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# If the index is found, store the success result in #nbtlist.operation.result.success nbtlist.var. Also stores the data that was deleted.
execute if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]