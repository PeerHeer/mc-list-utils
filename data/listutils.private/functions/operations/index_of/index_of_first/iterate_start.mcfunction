# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function listutils.private:operations/index_of/index_of_first/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/index_of/index_of_first/iterate
