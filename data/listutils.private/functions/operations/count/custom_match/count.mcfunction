# Author: PeerHeer
#
# Check if a list contains a specified element.

# Get the length of the list first.
function listutils.private:internal/length

# Start the iteration if the index is valid.
function listutils.private:operations/count/custom_match/iterate_start

# Set the success of the operation.
execute if score $listutils.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 0
execute if score $listutils.result listutils.out matches 1.. run scoreboard players set $listutils.success listutils.out 1