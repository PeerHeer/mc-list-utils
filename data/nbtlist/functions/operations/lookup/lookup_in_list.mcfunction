#> operations/lookup/lookup_in_list.mcfunction
# Chooses to look up index or data.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to look up

# If index is not -1, look up index.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 if score #nbtlist.operation.args.index nbtlist.var = #nbtlist.iterator.index nbtlist.var run function nbtlist:operations/lookup/lookup_using_index
# If index is -1, look up data.
execute if score #nbtlist.operation.has_data nbtlist.var matches 1 run function nbtlist:operations/lookup/lookup_using_data