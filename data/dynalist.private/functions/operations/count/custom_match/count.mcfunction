# Author: PeerHeer
#
# Check if a list contains a specified element.

# Get the length of the list first.
function dynalist.private:internal/length

# Start the iteration if the index is valid.
function dynalist.private:operations/count/custom_match/iterate_start

# Set the success of the operation.
execute if score $dynalist.result dynalist.out matches 0 run scoreboard players set $dynalist.success dynalist.out 0
execute if score $dynalist.result dynalist.out matches 1.. run scoreboard players set $dynalist.success dynalist.out 1