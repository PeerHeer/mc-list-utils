# Author: PeerHeer
#
# Iterates over the list.

# Reconstruct the list by prepending all elements to the output, except the element to be deleted.
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index.last listutils.var run function listutils.private:operations/slice/iterate_end

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches ..0 run function listutils.private:operations/slice/iterate