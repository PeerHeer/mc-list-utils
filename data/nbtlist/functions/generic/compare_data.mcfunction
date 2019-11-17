#> generic/compare_data.mcfunction
# Compares two data entries.
#
#> Arguments:
#   nbtlist:iterator Iterable[0]: the current iterable data.
#   nbtlist:iterator Args.Data: the data in the argument of the operation.
#> Returns:
#   #nbtlist.compare.result nbtlist.var: 1 if the data is not equal, 0 otherwise.

# Load the arguments into the Compare tag.
data modify storage nbtlist:compare Compare set value []
data modify storage nbtlist:compare Compare append from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:compare Compare append from storage nbtlist:iterator Args.Data

# Compare both entries and store the result in #nbtlist.compare.result nbtlist.var.
function nbtlist:comparison_functions/main
# execute store success score #nbtlist.compare.result nbtlist.var run data modify storage nbtlist:compare Compare[0] set from storage nbtlist:compare Compare[1]