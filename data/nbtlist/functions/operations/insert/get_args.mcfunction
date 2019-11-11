#> operations/insert/get_args.mcfunction
# Get the arguments for the insert operation from 'nbtlist:args'.
#
#> Arguments from nbtlist:ags:
#   Index: the index to insert at
#   Data: the data to insert
#> Returns:
#   #nbtlist.operation.args.index nbtlist.var: the index to insert at.

# Load arguments for the insert operation.
data modify storage nbtlist:iterator Args.Index set from storage nbtlist:args Index
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:args Data

# Store the index in the '#nbtlist.operation.args.index nbtlist.var' variable.
execute store result score #nbtlist.operation.args.index nbtlist.var run data get storage nbtlist:iterator Args.Index


