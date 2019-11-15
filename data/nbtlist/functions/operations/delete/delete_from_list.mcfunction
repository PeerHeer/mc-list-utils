#> operations/delete/delete_from_list.mcfunction
# Chooses to delete from index or data.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: index to delete at

# If index is not -1, delete at index.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/delete/delete_index
# If index is -1, delete at data.
execute unless score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/delete/delete_data