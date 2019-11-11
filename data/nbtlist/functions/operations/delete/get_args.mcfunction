#> operations/delete/get_args.mcfunction
# Get the arguments for the delete operation from 'nbtlist:args'.
#
#> Arguments from nbtlist:ags:
#   Index: the index to delete at
#   Data: the data to delete
#> Returns:
#   #nbtlist.operation.args.index nbtlist.var: the index to delete at. Defaults to -1.

# Initializes the index to -1.
scoreboard players set #nbtlist.operation.args.index nbtlist.var -1

# Load arguments for the delete operation.
data modify storage nbtlist:iterator Args.Index set from storage nbtlist:args Index
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:args Data

# Check if Data is present.
execute store result score #nbtlist.operation.has_data nbtlist.var run data get storage nbtlist:iterator Args.Data
# If data is not present, store the index in the '#nbtlist.operation.args.index nbtlist.var' variable.
execute if score #nbtlist.operation.has_data nbtlist.var matches 0 store result score #nbtlist.operation.args.index nbtlist.var run data get storage nbtlist:iterator Args.Index