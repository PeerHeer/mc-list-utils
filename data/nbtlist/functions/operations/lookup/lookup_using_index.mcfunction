#> operations/lookup/lookup_using_index.mcfunction
# Looks up data at a certain index.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to look up.
#> Returns:
#   nbtlist:result Data: the data that was looked up.
#   #nbtlist.operation.result.success nbtlist.var 1: 1 if successful, 0 otherwise.
#   #nbtlist.iterator.stop nbtlist.var: 1 if successful, 0 otherwise.

# If the index is found, store the success result in #nbtlist.operation.result.success nbtlist.var and modify the resulting data.
data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]

# Set success.
scoreboard players set #nbtlist.operation.result.success nbtlist.var 1

# Stop the iteration.
scoreboard players set #nbtlist.iterator.stop nbtlist.var 1