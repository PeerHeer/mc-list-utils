#> operations/reverse/reverse_list.mcfunction
# Prepends an element to the Resultlist, effectively reversing Iterable.
#
#> Returns:
#   #nbtlist.operation.result.success nbtlist.var: 1 if successful, 0 otherwise.

# Prepend the element to the ResultList, while checking if successful.
execute store result score #nbtlist.operation.success nbtlist.var run data modify storage nbtlist:iterator ResultList prepend from storage nbtlist:iterator Iterable[0]