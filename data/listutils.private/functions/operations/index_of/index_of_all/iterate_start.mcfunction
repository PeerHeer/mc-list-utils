# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function listutils.private:operations/index_of/index_of_all/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/index_of/index_of_all/iterate

# If there are no indices in the output list, set the success to 0.
execute unless data storage listutils:out List[0] run scoreboard players set $listutils.success listutils.out 0

