#> operations/min/check_min_element.mcfunction
# Checks if there is already data in nbtlist:result.
# If there is not, initializes it with the first element in the list.
# If there is, compares it with the current element in the list.
#
#> Arguments:
#   nbtlist:iterator Iterable[0]: current element in the list.
#   nbtlist:result Data: data in the result.

# Get the data length.
execute store result score #nbtlist.operation.has_data nbtlist.var run data get storage nbtlist:result Data

# If no data was found yet, set the current element as the min element.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 run data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]
# If data is already in result, compare it with the current element.
execute if score #nbtlist.operation.has_data nbtlist.var matches 1.. run function nbtlist:operations/min/get_min_element