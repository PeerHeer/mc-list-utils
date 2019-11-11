#> operations/delete/delete_index.mcfunction
# Deletes an entry at a certain index.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to delete at.
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# As long as index is not found, append to ResultList. This skips the appending of the element at the index to delete and thus effectively deletes it.
execute unless score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# If the index is found, store the success result in #nbtlist.operation.result.success nbtlist.var 1.
execute if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run scoreboard players set #nbtlist.operation.result.success nbtlist.var 1