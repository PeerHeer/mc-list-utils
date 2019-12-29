# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# Copy the last element in the list to compare it.
data modify storage listutils.private:compare Root.DataL set from storage listutils.private:iterator Root.Iterable[0]

# Compare the last element with the input data.
function listutils.custom:compare/main

# If the element does not match, append it to the output. This ignores elements to be replaced.
execute unless score $listutils.compare.result listutils.out matches 0 run data modify storage listutils:out List append from storage listutils.private:iterator Root.Iterable[0]

# If the element matches, replace it with the input data.
execute if score $listutils.compare.result listutils.out matches 0 store success score $listutils.success listutils.out run data modify storage listutils:out List append from storage listutils:in ReplaceData

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[0]

# If comparison was successful, reconstruct the list using a different function to avoid potentially expensive comparisons.
execute if score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_first/iterate_end

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.compare.result listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_first/iterate