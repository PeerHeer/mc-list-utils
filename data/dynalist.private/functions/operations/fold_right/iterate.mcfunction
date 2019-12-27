# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.current_index dynalist.in 1

# Set the current element in the dynalist:fold storage
data modify storage dynalist:fold In set from storage dynalist.private:iterator Root.Iterable[-1]

# Call a fold function.
function dynalist.custom:fold/main

# Store output of the function.
data modify storage dynalist:fold Result set from storage dynalist:fold Out

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.current_index dynalist.in matches 0 unless score $dynalist.break dynalist.out matches 1 run function dynalist.private:operations/fold_right/iterate