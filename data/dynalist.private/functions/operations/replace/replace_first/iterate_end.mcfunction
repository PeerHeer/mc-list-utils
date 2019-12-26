# Author: PeerHeer
#
# Iterates over the list after the element is replaced.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Append to the output.
data modify storage dynalist:out List append from storage dynalist.private:iterator Root.Iterable[0]

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[0]

# If the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_first/iterate_end