# Author: PeerHeer
#
# Iterates over the list.

# Append to the output to reverse the list.
data modify storage dynalist:out List append from storage dynalist.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable and decrement its length.
data remove storage dynalist.private:iterator Root.Iterable[-1]
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/reverse/iterate