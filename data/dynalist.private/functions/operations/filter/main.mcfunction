# Author: PeerHeer
#
# Filters a list according to a filter function.

# Get the length of the list.
function dynalist.private:internal/length

# Set success.
scoreboard players set $dynalist.success dynalist.out 1

# Start iteration.
function dynalist.private:operations/filter/initialize_iterator
function dynalist.private:operations/filter/iterate