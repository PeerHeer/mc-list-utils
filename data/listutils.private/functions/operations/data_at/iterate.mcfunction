# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.iterator.length listutils.var 1

# If the index is found, return the result.
execute if score $listutils.iterator.length listutils.var = $listutils.iterator.index listutils.var run function listutils.private:operations/data_at/return_success

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute if score $listutils.success listutils.out matches 0 unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/data_at/iterate