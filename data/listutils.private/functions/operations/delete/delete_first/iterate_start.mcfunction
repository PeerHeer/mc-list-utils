# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function listutils.private:operations/delete/delete_first/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/delete/delete_first/iterate

# If no element was found, set the success to 0.
execute unless score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 0

