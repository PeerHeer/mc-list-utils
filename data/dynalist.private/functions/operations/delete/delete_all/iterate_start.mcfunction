# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function dynalist.private:operations/delete/delete_all/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/delete/delete_all/iterate

# If there are deleted elements, set the success to 0.
execute if score $dynalist.result dynalist.out matches 0 run scoreboard players set $dynalist.success dynalist.out 0

