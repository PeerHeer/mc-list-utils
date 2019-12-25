# Author: PeerHeer
#
# Reverses the input list.

# Get the list length to use in the iterator.
function dynalist.private:internal/length

# Initialize iterator.
function dynalist.private:operations/reverse/initialize_iterator

# Start iteration if list length > 0.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/reverse/iterate

# Set success to 1.
scoreboard players set $dynalist.success dynalist.out 1