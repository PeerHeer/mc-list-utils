#> operations/replace/get_args.mcfunction
# Get the arguments for the replace operation from 'nbtlist:args'.
#
#> Arguments:
#   nbtlist:args Index: the index to replace.
#   nbtlist:args Data: the data to insert.
#> Returns:
#   #nbtlist.operation.has_data nbtlist.var: 1 if data was specified, 0 otherwise.
#   #nbtlist.operation.args.index nbtlist.var: the index to replace.

# Load arguments for the replace operation.
data modify storage nbtlist:iterator Args.Index set from storage nbtlist:args Index
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:args Data
data modify storage nbtlist:iterator Args.Data2 set from storage nbtlist:args Data2

# Check if Data is present.
execute store result score #nbtlist.operation.has_data nbtlist.var run data get storage nbtlist:iterator Args.Data2

# If data is not present, store the index in the '#nbtlist.operation.args.index nbtlist.var' variable.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 store result score #nbtlist.operation.args.index nbtlist.var run data get storage nbtlist:iterator Args.Index
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 if score #nbtlist.operation.args.index nbtlist.var matches ..-1 run function nbtlist:generic/convert_negative_index