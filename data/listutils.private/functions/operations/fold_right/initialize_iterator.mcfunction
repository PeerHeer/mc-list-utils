# Author: PeerHeer
#
# Initialize the iterator.

# Initialize scores.
scoreboard players set $listutils.result listutils.out 0
scoreboard players set $listutils.break listutils.out 0

# Set iterable length.
scoreboard players operation $listutils.current_index listutils.in = $listutils.length listutils.var

# Copy the list into the iterator.
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List

# Initialize the results to the default value.
data modify storage listutils:fold Result set from storage listutils:in Data
data modify storage listutils:fold Out set value {}
scoreboard players operation $listutils.fold listutils.out = $listutils.init_value listutils.in