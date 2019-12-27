# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.current_index dynalist.in 1

# Set the current element in the dynalist:filter storage
data modify storage dynalist:filter In set from storage dynalist.private:iterator Root.Iterable[-1]

# Call a filter function.
function dynalist.custom:filter/main

# If the filter score did not return 0, put the element in the output list.
execute unless score $dynalist.filter dynalist.out matches 0 run data modify storage dynalist:out List prepend from storage dynalist.private:iterator Root.Iterable[-1]

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the operation was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.current_index dynalist.in matches 0 run function dynalist.private:operations/filter/iterate