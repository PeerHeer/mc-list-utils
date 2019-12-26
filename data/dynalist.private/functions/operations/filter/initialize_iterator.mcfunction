# Author: PeerHeer
#
# Initialize the iterator.

# Initialize scores.
scoreboard players set $dynalist.result dynalist.out 0

# Set iterable length.
scoreboard players operation $dynalist.current_index dynalist.in = $dynalist.length dynalist.var

# Copy the list into the iterator.
data modify storage dynalist.private:iterator Root.Iterable set from storage dynalist:in List