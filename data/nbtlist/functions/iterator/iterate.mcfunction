#> iterator/iterate.mcfunction
# Iterate over the list by deleting the first element unti the list is empty or #nbtlist.iterator.stop nbtlist.var is set.
#
#> Arguments:
#   #nbtlist.iterator.index nbtlist.var: the current iterator index.
#   #nbtlist.iterator.operation nbtlist.var: the type of operation to execute.

# Add one to the current index.
scoreboard players add #nbtlist.iterator.index nbtlist.var 1

# Do actions for each operation.
execute if score #nbtlist.iterator.operation nbtlist.var matches 2 run function nbtlist:operations/insert/insert_into_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 3 run function nbtlist:operations/delete/delete_from_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 4 run function nbtlist:operations/lookup/lookup_in_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 5 run function nbtlist:operations/extend/extend_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 6 run function nbtlist:operations/reverse/reverse_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 7 run function nbtlist:operations/slice/slice_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 8 run function nbtlist:operations/replace/replace_in_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 9 run function nbtlist:operations/count/count_elements
execute if score #nbtlist.iterator.operation nbtlist.var matches 99 run function nbtlist:operations/sort/merge_sort/decompose_list


# Remove the first element of the list.
data remove storage nbtlist:iterator Iterable[0]

# If the list is not empty and the checks were not successful, go to the next element.
execute if data storage nbtlist:iterator Iterable[0] if score #nbtlist.iterator.stop nbtlist.var matches 0 run function nbtlist:iterator/iterate