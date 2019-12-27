# Author: PeerHeer
#
# Folds a list from the left according to a fold function.

# Get the length of the list.
function dynalist.private:internal/length

# Set success.
scoreboard players set $dynalist.success dynalist.out 1

# Start iteration.
function dynalist.private:operations/fold_left/initialize_iterator
function dynalist.private:operations/fold_left/iterate

# Set the output data.
data modify storage dynalist:out Data set from storage dynalist:fold Result
scoreboard players operation $dynalist.result dynalist.out = $dynalist.fold dynalist.out