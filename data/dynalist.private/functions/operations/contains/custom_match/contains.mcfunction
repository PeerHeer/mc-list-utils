# Author: PeerHeer
#
# Check how many times a list contains a spcecific element.

# Get the length of the list first.
function dynalist.private:internal/length

# Start the iteration if the index is valid.
function dynalist.private:operations/contains/custom_match/iterate_start

# Set the success of the operation.
execute if score $dynalist.compare.result dynalist.out matches 0 run scoreboard players set $dynalist.success dynalist.out 1
execute if score $dynalist.compare.result dynalist.out matches 1 run scoreboard players set $dynalist.success dynalist.out 0

# Set the result of the operation.
scoreboard players operation $dynalist.result dynalist.out = $dynalist.success dynalist.out