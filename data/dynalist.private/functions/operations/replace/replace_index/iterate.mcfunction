# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Reconstruct the list by prepending all elements to the output, except the element to be replaced.
execute unless score $dynalist.iterator.length dynalist.var = $dynalist.iterator.index dynalist.var run data modify storage dynalist:out List prepend from storage dynalist.private:iterator Root.Iterable[-1]

# If the index is found, replace the element at that index.
execute if score $dynalist.iterator.length dynalist.var = $dynalist.iterator.index dynalist.var run function dynalist.private:operations/replace/replace_index/replace_element

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_index/iterate