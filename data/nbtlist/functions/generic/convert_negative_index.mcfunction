#> generic/convert_negative_index.mcfunction
# Converts a negative index to a positive index.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: the negative index to convert.
#> Returns:
#   #nbtlist.operation.args.index nbtlist.var: the converted positive index.

# Get list length.
execute store result score #nbtlist.length nbtlist.var run data get storage nbtlist:args List

# Compute positive index.
scoreboard players operation #nbtlist.length nbtlist.var += #nbtlist.operation.args.index nbtlist.var
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.length nbtlist.var
scoreboard players reset #nbtlist.length nbtlist.var