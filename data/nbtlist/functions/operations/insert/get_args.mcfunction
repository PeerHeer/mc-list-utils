#> operations/insert/get_args.mcfunction
# Get the arguments for the insert operation from 'nbtlist:args'.
#
#> Arguments:
#   nbtlist:args Index: the index to insert at.
#   nbtlist:args Data: the data to insert.
#> Returns:
#   #nbtlist.operation.args.index nbtlist.var: the index to insert at.

# Load arguments for the insert operation.
data modify storage nbtlist:iterator Args.Index set from storage nbtlist:args Index
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:args Data

# Store the index in the '#nbtlist.operation.args.index nbtlist.var' variable.
execute store result score #nbtlist.operation.args.index nbtlist.var run data get storage nbtlist:iterator Args.Index
execute if score #nbtlist.operation.args.index nbtlist.var matches ..-1 run function nbtlist:generic/convert_negative_index



