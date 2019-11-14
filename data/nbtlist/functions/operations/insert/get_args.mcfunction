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
scoreboard players set #nbtlist.operation.insert.append nbtlist.var 0
execute if score #nbtlist.operation.args.index nbtlist.var matches -1 run scoreboard players set #nbtlist.operation.insert.append nbtlist.var 1
execute if score #nbtlist.operation.args.index nbtlist.var matches ..-2 run function nbtlist:operations/insert/convert_negative_index



