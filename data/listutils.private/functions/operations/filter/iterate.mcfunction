# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.current_index listutils.in 1

# Set the current element in the listutils:filter storage
data modify storage listutils:filter In set from storage listutils.private:iterator Root.Iterable[-1]

# Call a filter function.
function listutils.custom:filter/main

# If the filter score did not return 0, put the element in the output list.
execute unless score $listutils.filter listutils.out matches 0 run data modify storage listutils:out List prepend from storage listutils.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.current_index listutils.in matches 0 run function listutils.private:operations/filter/iterate