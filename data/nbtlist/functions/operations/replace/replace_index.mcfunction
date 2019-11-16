#> operations/replace/replace_index.mcfunction
# Replaces an entry at a certain index.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to replace at.
#> Returns:
#   nbtlist:result Data: the data that was replaced.
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# As long as index is not found, append to ResultList. This skips the appending of the element at the index to replace and thus effectively replaces it.
execute unless score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# If the index is found, store the success result in #nbtlist.operation.result.success nbtlist.var. Also stores the data that was replaced.
execute if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Args.Data
execute if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]