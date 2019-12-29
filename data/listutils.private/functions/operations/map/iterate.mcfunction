# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $listutils.current_index listutils.in 1

# Set the current element in the listutils:map storage
data modify storage listutils:map In set from storage listutils.private:iterator Root.Iterable[-1]

# Call a map function.
function listutils.custom:map/main

# If the map score did not return 0, put the element in the output list.
data modify storage listutils:out List prepend from storage listutils:map Out

# Remove the last element from the Iterable.
data remove storage listutils.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $listutils.current_index listutils.in matches 0 run function listutils.private:operations/map/iterate