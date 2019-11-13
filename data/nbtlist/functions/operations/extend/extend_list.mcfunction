#> operations/extend/extend_list.mcfunction
# Appends an element from the iterable (List2) to the ResultList (List)
#
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# Append the element to the ResultList, while checking if successful.
execute store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]