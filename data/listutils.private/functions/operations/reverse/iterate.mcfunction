# Author: PeerHeer
#
# Iterates over the list.

# Append to the output to reverse the list.
data modify storage listutils:out List append from storage listutils.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable and decrement its length.
data remove storage listutils.private:iterator Root.Iterable[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/reverse/iterate