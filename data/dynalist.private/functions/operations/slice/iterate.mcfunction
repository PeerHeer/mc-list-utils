# Author: PeerHeer
#
# Iterates over the list.

# Reconstruct the list by prepending all elements to the output, except the element to be deleted.
execute if score $dynalist.iterator.length dynalist.var = $dynalist.iterator.index.last dynalist.var run function dynalist.private:operations/slice/iterate_end

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches ..0 run function dynalist.private:operations/slice/iterate