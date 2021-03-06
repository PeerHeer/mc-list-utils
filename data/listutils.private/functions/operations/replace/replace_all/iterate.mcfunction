# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# Copy the last element in the list to compare it.
data modify storage listutils.private:compare Root.DataL set from storage listutils.private:iterator Root.Iterable[-1]

# Compare the last element with the input data.
function listutils.custom:compare/main

# If the element does not match, append it to the output. This ignores elements to be replaced.
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]

# If the element matches, replace it with the input data.
execute if score $listutils.compare.result listutils.out matches 0 store success score $listutils.operation.success listutils.var run data modify storage listutils:out List prepend from storage listutils:in ReplaceData

# Append the index to the result list.
execute if score $listutils.compare.result listutils.out matches 0 if score $listutils.operation.success listutils.var matches 1 run scoreboard players add $listutils.result listutils.out 1

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_all/iterate