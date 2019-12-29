# Author: PeerHeer
#
# Iterates over the list.

# Create a sublist.
data modify storage listutils.private:iterator TempList set from storage listutils.private:iterator Root.Iterable[-1]
data modify storage listutils:out List prepend from storage listutils.private:iterator TempList[0]
execute store success score $listutils.success listutils.out run execute store success score $listutils.success listutils.out run data modify storage listutils:out ZipList prepend from storage listutils.private:iterator TempList[1]
execute if score $listutils.success listutils.out matches 0 run scoreboard players set $listutils.iterator.length listutils.var 1

# Remove the last element from the Iterables and decrement their lengths.
data remove storage listutils.private:iterator Root.Iterable[-1]
scoreboard players remove $listutils.iterator.length listutils.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/unzip2/iterate