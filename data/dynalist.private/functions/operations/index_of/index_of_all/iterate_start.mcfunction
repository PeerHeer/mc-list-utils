# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function dynalist.private:operations/index_of/index_of_all/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/index_of/index_of_all/iterate

# If there are no indices in the output list, set the success to 0.
execute unless data storage dynalist:out List[0] run scoreboard players set $dynalist.success dynalist.out 0

