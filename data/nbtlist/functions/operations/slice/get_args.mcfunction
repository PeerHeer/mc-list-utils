#> operations/slice/get_args.mcfunction
# Get the arguments for the slice operation from 'nbtlist:args'.
#
#> Arguments:
#   nbtlist:args Index: the first index of the slice, inclusive.
#   nbtlist:args Index2: the last index of the slice, exclusive.
#> Returns:
#   #nbtlist.operation.args.index nbtlist.var: the index to slice at.

# Reset index2 variable.
scoreboard players reset #nbtlist.operation.args.index2 nbtlist.var

# Load arguments for the slice operation.
data modify storage nbtlist:iterator Args.Index set from storage nbtlist:args Index
data modify storage nbtlist:iterator Args.Index2 set from storage nbtlist:args Index2

# Store the indices in the '#nbtlist.operation.args.index nbtlist.var' and '#nbtlist.operation.args.index2 nbtlist.var' variables.
execute store result score #nbtlist.operation.args.index nbtlist.var run data get storage nbtlist:iterator Args.Index
execute store success score #nbtlist.operation.has_index2 nbtlist.var store result score #nbtlist.operation.args.index2 nbtlist.var run data get storage nbtlist:iterator Args.Index2

# Convert negative indices to positive.
execute if score #nbtlist.operation.args.index nbtlist.var matches ..-1 run function nbtlist:generic/convert_negative_index
execute if score #nbtlist.operation.has_index2 nbtlist.var matches 1 if score #nbtlist.operation.args.index2 nbtlist.var matches ..-1 run function nbtlist:operations/slice/convert_negative_index2

# If Index2 is not given, set it to the INT_MAX value so that all values in the list after Index are returned.
execute if score #nbtlist.operation.has_index2 nbtlist.var matches 0 run scoreboard players operation #nbtlist.operation.args.index2 nbtlist.var = #nbtlist.int_max nbtlist.const