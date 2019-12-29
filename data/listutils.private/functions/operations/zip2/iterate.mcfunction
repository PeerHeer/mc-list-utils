# Author: PeerHeer
#
# Iterates over the list.

# Create a sublist.
data modify storage listutils.private:iterator TempList set value []
data modify storage listutils.private:iterator TempList append from storage listutils.private:iterator Root.Iterable[-1]
execute store success score $listutils.success listutils.out run data modify storage listutils.private:iterator TempList append from storage listutils.private:iterator Root.Iterable2[-1]
data modify storage listutils:out List prepend from storage listutils.private:iterator TempList

# Remove the last element from the Iterables and decrement their lengths.
data remove storage listutils.private:iterator Root.Iterable[-1]
data remove storage listutils.private:iterator Root.Iterable2[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/zip2/iterate