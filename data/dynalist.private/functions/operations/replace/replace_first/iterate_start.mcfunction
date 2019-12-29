# Author: PeerHeer
#
# Start iteration by initializing the iterator and then iterating over the iterable.

# Initialize iterator.
function dynalist.private:operations/replace/replace_first/initialize_iterator

# Start the iteration if the list is not empty.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/replace/replace_first/iterate

# If no element was found, set the success to 0.
execute unless score $dynalist.compare.result dynalist.out matches 0 run scoreboard players set $dynalist.success dynalist.out 0

