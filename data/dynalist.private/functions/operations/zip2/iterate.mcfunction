# Author: PeerHeer
#
# Iterates over the list.

# Create a sublist.
data modify storage dynalist.private:iterator TempList set value []
data modify storage dynalist.private:iterator TempList append from storage dynalist.private:iterator Root.Iterable[-1]
execute store success score $dynalist.success dynalist.out run data modify storage dynalist.private:iterator TempList append from storage dynalist.private:iterator Root.Iterable2[-1]
data modify storage dynalist:out List prepend from storage dynalist.private:iterator TempList

# Remove the last element from the Iterables and decrement their lengths.
data remove storage dynalist.private:iterator Root.Iterable[-1]
data remove storage dynalist.private:iterator Root.Iterable2[-1]
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/zip2/iterate