#> operations/delete/delete_from_list.mcfunction
# Chooses to delete from index or data.
#
#> Arguments:
#   #nbtlist.operation.has_data nbtlist.var: whether the data was specified or not.

# If no data was found, delete from index.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/delete/delete_index

# If data was found, delet from data.
execute unless score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/delete/delete_data