#> operations/insert/insert_into_list.mcfunction
# Inserts an element at a certain index.
# Adds all elements of Iterable to ResultList, including the new element.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to insert at.

# If insertion index is found, insert the data.
execute if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Args.Data
# Append element from Iterable to ResultList.
data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]