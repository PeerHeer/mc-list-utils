#> operations/min/get_min_element.mcfunction
# Compares the current element in the list to the current minimum element.
# Puts the minimum element from the comparison into the nbtlist:result Data.
#
#> Arguments:
#   nbtlist:iterator Iterable[0]: current element in the list.
#   nbtlist:result Data: current minimum element.
#> Returns:
#   nbtlist:result Data: minimum element from the comparison.

# Set the elements to compare into the Compare tag in nbtlist:compare.
data modify storage nbtlist:compare Compare set value []
data modify storage nbtlist:compare Compare append from storage nbtlist:iterator Iterable[0]
data modify storage nbtlist:compare Compare append from storage nbtlist:result Data

# Compare values using the specified comparison function.
function nbtlist:comparison_functions/main

# If the current element in the list is lower than the previous min value, set the current element as the min value.
execute if score #nbtlist.compare.result nbtlist.var matches -1 store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:result Data set from storage nbtlist:iterator Iterable[0]