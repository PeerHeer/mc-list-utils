#> operations/replace/replace_in_list.mcfunction
# Chooses to replace from index or data.
#
#> Arguments:
#   #nbtlist.operation.has_data nbtlist.var: whether the data was specified or not.

# If no data was found, replace from index.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/replace/replace_index

# If data was found, replace from data.
execute unless score #nbtlist.operation.has_data nbtlist.var matches 0 run function nbtlist:operations/replace/replace_data