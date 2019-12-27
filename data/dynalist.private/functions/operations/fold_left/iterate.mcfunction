# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players add $dynalist.current_index dynalist.in 1
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Set the current element in the dynalist:fold storage
data modify storage dynalist:fold In set from storage dynalist.private:iterator Root.Iterable[0]

# Call a fold function.
function dynalist.custom:fold/main

# Store output of the function.
data modify storage dynalist:fold Result set from storage dynalist:fold Out

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[0]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 unless score $dynalist.break dynalist.out matches 1 run function dynalist.private:operations/fold_left/iterate