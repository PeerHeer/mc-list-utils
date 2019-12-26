# Author: PeerHeer
#
# Iterates over the list, appends to slice.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Reconstruct the list by prepending all elements to the output, except the element to be deleted.
data modify storage dynalist:out List prepend from storage dynalist.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]
say iterate_end

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var = $dynalist.iterator.index.first dynalist.var unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/slice/iterate_end