# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function listutils.private:operations/index_of/index_of_last/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/index_of/index_of_last/iterate

# If the comparison was not successful, set the length to -1.
execute unless score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.iterator.length listutils.var -1

