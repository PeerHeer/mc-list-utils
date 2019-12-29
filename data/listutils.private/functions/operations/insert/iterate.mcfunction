# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# Reconstruct the list by prepending all elements to the output.
data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]

# If the index is found, put it in the list.
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index listutils.var store success score $listutils.success listutils.out run data modify storage listutils:out List prepend from storage listutils:in Data

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/insert/iterate