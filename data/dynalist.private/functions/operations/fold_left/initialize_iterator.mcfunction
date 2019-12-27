# Author: PeerHeer
#
# Initialize the iterator.

# Initialize scores.
scoreboard players set $dynalist.result dynalist.out 0
scoreboard players set $dynalist.break dynalist.out 0
scoreboard players set $dynalist.current_index dynalist.in -1

# Set iterable length.
scoreboard players operation $dynalist.iterator.length dynalist.var = $dynalist.length dynalist.var

# Copy the list into the iterator.
data modify storage dynalist.private:iterator Root.Iterable set from storage dynalist:in List

# Initialize the results to the default value.
data modify storage dynalist:fold Result set value {}
data modify storage dynalist:fold Out set value {}
scoreboard players set $dynalist.fold dynalist.out 0