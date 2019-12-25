# Author: PeerHeer
#
# Iterates over the list.

# Copy the last element in the list to compare it.
data modify storage dynalist:compare DataL set from storage dynalist:iterator Iterable[-1]

# Compare the last element with the input data.
function dynalist.custom:compare/main

# Remove the last element from the Iterable and decrement its length.
data remove storage dynalist:iterator Iterable[-1]
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.compare.result dynalist.var matches 0 unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist:_operations/index_of/iterate