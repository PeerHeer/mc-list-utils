# Author: PeerHeer
#
# Iterates over the list after the element is deleted.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# Append to the output.
data modify storage listutils:out List append from storage listutils.private:iterator Root.Iterable[0]

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[0]

# If the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_first/iterate_end