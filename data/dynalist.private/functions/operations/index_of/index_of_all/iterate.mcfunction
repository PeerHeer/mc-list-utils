# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# Copy the last element in the list to compare it.
data modify storage dynalist.private:compare Root.DataL set from storage dynalist.private:iterator Root.Iterable[-1]

# Compare the last element with the input data.
function dynalist.custom:compare/main

# Append the index to the result list.
execute if score $dynalist.compare.result dynalist.var matches 0 run function dynalist.private:operations/index_of/index_of_all/append_index

# Remove the last element from the Iterable.
data remove storage dynalist.private:iterator Root.Iterable[-1]

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/index_of/index_of_all/iterate