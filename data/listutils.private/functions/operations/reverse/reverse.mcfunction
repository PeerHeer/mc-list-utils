# Author: PeerHeer
#
# Reverses the input list.

# Get the list length to use in the iterator.
function listutils.private:internal/length

# Initialize iterator.
function listutils.private:operations/reverse/initialize_iterator

# Start iteration if list length > 0.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/reverse/iterate

# Set success to 1.
scoreboard players set $listutils.success listutils.out 1