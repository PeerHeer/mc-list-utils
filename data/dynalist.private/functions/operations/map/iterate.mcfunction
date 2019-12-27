# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.current_index dynalist.in 1

# Set the current element in the dynalist:map storage
data modify storage dynalist:map In set from storage dynalist.private:iterator Root.Iterable[-1]

# Call a map function.
function dynalist.custom:map/main

# If the map score did not return 0, put the element in the output list.
data modify storage dynalist:out List prepend from storage dynalist:map Out

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.current_index dynalist.in matches 0 run function dynalist.private:operations/map/iterate