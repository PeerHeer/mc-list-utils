# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.current_index listutils.in 1

# Set the current element in the listutils:fold storage
data modify storage listutils:fold In set from storage listutils.private:iterator Root.Iterable[-1]

# Call a fold function.
function listutils.custom:fold/main

# Store output of the function.
data modify storage listutils:fold Result set from storage listutils:fold Out

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.current_index listutils.in matches 0 unless score $listutils.break listutils.out matches 1 run function listutils.private:operations/fold_right/iterate