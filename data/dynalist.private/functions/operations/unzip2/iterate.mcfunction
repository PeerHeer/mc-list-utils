# Author: PeerHeer
#
# Iterates over the list.

# Create a sublist.
data modify storage dynalist.private:iterator TempList set from storage dynalist.private:iterator Root.Iterable[-1]
data modify storage dynalist:out List prepend from storage dynalist.private:iterator TempList[0]
execute store success score $dynalist.success dynalist.out run execute store success score $dynalist.success dynalist.out run data modify storage dynalist:out ZipList prepend from storage dynalist.private:iterator TempList[1]
execute if score $dynalist.success dynalist.out matches 0 run scoreboard players set $dynalist.iterator.length dynalist.var 1

# Remove the last element from the Iterables and decrement their lengths.
data remove storage dynalist.private:iterator Root.Iterable[-1]
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/unzip2/iterate