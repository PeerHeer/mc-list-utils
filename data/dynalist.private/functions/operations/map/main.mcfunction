# Author: PeerHeer
#
# Maps a list according to a map function.

# Get the length of the list.
function dynalist.private:internal/length

# Set success.
scoreboard players set $dynalist.success dynalist.out 1

# Start iteration.
function dynalist.private:operations/map/initialize_iterator
function dynalist.private:operations/map/iterate