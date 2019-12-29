# Author: PeerHeer
#
# Filters a list according to a filter function.

# Get the length of the list.
function listutils.private:internal/length

# Set success.
scoreboard players set $listutils.success listutils.out 1

# Start iteration.
function listutils.private:operations/filter/initialize_iterator
function listutils.private:operations/filter/iterate