# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Copy the last element in the list to compare it.
data modify storage dynalist.private:compare Root.DataL set from storage dynalist.private:iterator Root.Iterable[-1]

# Compare the last element with the input data.
function dynalist.custom:compare/main

# If the element does not match, append it to the output. This ignores elements to be replaced.
execute unless score $dynalist.compare.result dynalist.var matches 0 run data modify storage dynalist:out List prepend from storage dynalist.private:iterator Root.Iterable[-1]

# If the element matches, replace it with the input data.
execute if score $dynalist.compare.result dynalist.var matches 0 store success score $dynalist.success dynalist.out run data modify storage dynalist:out List prepend from storage dynalist:in ReplaceData

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If comparison was successful, reconstruct the list using a different function to avoid potentially expensive comparisons.
execute if score $dynalist.compare.result dynalist.var matches 0 unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_last/iterate_end

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.compare.result dynalist.var matches 0 unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_last/iterate