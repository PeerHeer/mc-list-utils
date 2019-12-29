# Author: PeerHeer
#
# Initialize the iterator.

# Set iterable length.
scoreboard players operation $listutils.current_index listutils.in = $listutils.length listutils.var

# Copy the list into the iterator.
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List