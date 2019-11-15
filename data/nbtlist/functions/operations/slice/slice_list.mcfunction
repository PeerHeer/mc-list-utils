#> operations/slice/slice_list.mcfunction
# Slice the list from index to index2.

# Slice the list from index to index2.
execute if score #nbtlist.iterator.index nbtlist.var >= #nbtlist.operation.args.index nbtlist.var if score #nbtlist.iterator.index nbtlist.var < #nbtlist.operation.args.index2 nbtlist.var store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]