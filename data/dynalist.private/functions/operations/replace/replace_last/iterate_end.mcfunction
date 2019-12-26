# Author: PeerHeer
#
# Iterates over the list after the element is replaced.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Prepend to the output.
data modify storage dynalist:out List prepend from storage dynalist.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_last/iterate_end