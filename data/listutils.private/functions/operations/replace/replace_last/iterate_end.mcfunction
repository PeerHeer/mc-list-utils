# Author: PeerHeer
#
# Iterates over the list after the element is replaced.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# Prepend to the output.
data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/replace/replace_last/iterate_end