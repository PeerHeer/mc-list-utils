# Author: PeerHeer
#
# Initialize the iterator.

# Reset scores.
scoreboard players set $dynalist.success dynalist.out 0

# Get iterable length.
scoreboard players operation $dynalist.iterator.length dynalist.var = $dynalist.length.result dynalist.var

# Copy the list into the iterator.
data modify storage dynalist:iterator Iterable set from storage dynalist:in List