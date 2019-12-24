# Author: PeerHeer
#
# Iterates over the list.

# Decrement the length.
scoreboard players remove $dynalist.iterator.length dynalist.var 1

# If the index is found, return the result.
execute if score $dynalist.iterator.length dynalist.var = $dynalist.iterator.index dynalist.var run function dynalist:_operations/data_at/return_success

# Remove the last element from the Iterable.
data remove storage dynalist:iterator Iterable[-1]

# If the comparison was unsuccessful, and the list is not empty, go to the next iteration.
execute if score $dynalist.success dynalist.out matches 0 unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist:_operations/data_at/iterate