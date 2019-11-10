#> iterate.mcfunction
#
scoreboard players add #nbtlist.iterator.index nbtlist.var 1

execute if score #nbtlist.iterator.operation nbtlist.var matches 2 run function nbtlist:operations/insert/insert_into_list
execute if score #nbtlist.iterator.operation nbtlist.var matches 3 run function nbtlist:operations/delete/delete_from_list
# execute if score #nbtlist.iterator.operation nbtlist.var matches 4 run function nbtlist:operations/lookup/check
# execute if score #nbtlist.iterator.operation nbtlist.var matches 5 run function nbtlist:operations/merge/load_params


# Remove the first element of the list.
data remove storage nbtlist:iterator Iterable[0]

# If the list is not empty and the checks were not successful, go to the next element.
execute if data storage nbtlist:iterator Iterable[0] if score #nbtlist.iterator.stop nbtlist.var matches 0 run function nbtlist:iterator/iterate