# Author: PeerHeer
#
# Folds a list from the left according to a fold function.

# Get the length of the list.
function listutils.private:internal/length

# Set success.
scoreboard players set $listutils.success listutils.out 1

# Start iteration.
function listutils.private:operations/fold_left/initialize_iterator
function listutils.private:operations/fold_left/iterate

# Set the output data.
data modify storage listutils:out Data set from storage listutils:fold Result
scoreboard players operation $listutils.result listutils.out = $listutils.fold listutils.out