# Author: PeerHeer
#
# Initialize the iterator.

# Reset scores.
scoreboard players set $listutils.success listutils.out 0

# Get iterable length.
scoreboard players operation $listutils.iterator.length listutils.var = $listutils.length listutils.var

# Copy the list into the iterator.
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List