#> compare/compare_data.mcfunction
# Compares two data entries.
#
#> Arguments from nbtlist:iterator:
#   Iterable[0]: the current iterable data.
#   Args.Data: the data in the argument of the operation.
#> Returns:
#   #nbtlist.compare.not_equal nbtlist.var: 1 if the data is not equal, 0 otherwise.

# Load the arguments into the Compare tag.
data modify storage nbtlist:iterator Compare.Value1 set from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:iterator Compare.Value2 set from storage nbtlist:iterator Args.Data

# Compare both entries and store the result in #nbtlist.compare.not_equal nbtlist.var.
execute store success score #nbtlist.compare.not_equal nbtlist.var run data modify storage nbtlist:iterator Compare.Value1 set from storage nbtlist:iterator Compare.Value2

# Remove the compared values.
data remove storage nbtlist:iterator Compare.Value1
data remove storage nbtlist:iterator Compare.Value2