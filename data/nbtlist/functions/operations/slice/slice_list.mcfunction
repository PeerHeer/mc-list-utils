#> operations/slice/slice_list.mcfunction
# Slice the list from index to index2.
# Done by appending all elements from Iterable between index and index2.
#
#> Arguments:
#   #nbtlist.iterator.index nbtlist.var: first index of slice, inclusive.
#   #nbtlist.iterator.index2 nbtlist.var: last index of slice, exclusive.
#   #nbtlist.iterator.index nbtlist.var: current iterator index.
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# Slice the list from index to index2.
execute if score #nbtlist.iterator.index nbtlist.var >= #nbtlist.operation.args.index nbtlist.var if score #nbtlist.iterator.index nbtlist.var < #nbtlist.operation.args.index2 nbtlist.var store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]