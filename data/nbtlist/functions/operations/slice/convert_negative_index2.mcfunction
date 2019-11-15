#> operations/slice/convert_negative_index2
# Converts index2 from negative to positive index.
#
#> Arguments:
#   #nbtlist.operation.args.index nbtlist.var: first index of slice.
#   #nbtlist.operation.args.index2 nbtlist.var: second index of slice.
#> Return
#   #nbtlist.operation.args.index2 nbtlist.var: second index of slice, converted to positive number.

# Temporarily store index.
scoreboard players operation #nbtlist.operation.args.index.temp nbtlist.var = #nbtlist.operation.args.index nbtlist.var

# Use index to compute positive value.
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.operation.args.index2 nbtlist.var
function nbtlist:generic/convert_negative_index

# Set the values for index2 and index.
scoreboard players operation #nbtlist.operation.args.index2 nbtlist.var = #nbtlist.operation.args.index nbtlist.var
scoreboard players operation #nbtlist.operation.args.index nbtlist.var = #nbtlist.operation.args.index.temp nbtlist.var