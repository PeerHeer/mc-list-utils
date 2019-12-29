# Author: PeerHeer
#
# Check how many times a list contains a spcecific element.

# Get the length of the list first.
function listutils.private:internal/length

# Start the iteration if the index is valid.
function listutils.private:operations/contains/custom_match/iterate_start

# Set the success of the operation.
execute if score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.success listutils.out 1
execute if score $listutils.compare.result listutils.out matches 1 run scoreboard players set $listutils.success listutils.out 0

# Set the result of the operation.
scoreboard players operation $listutils.result listutils.out = $listutils.success listutils.out