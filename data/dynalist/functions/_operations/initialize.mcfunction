# Author: PeerHeer
#
# Initializes scores and storage before doing an operation.

# Initialize success scores.
scoreboard players set $dynalist.success dynalist.out 0
scoreboard players set $dynalist.error.success dynalist.var 1

# If the comparison function is not set, set it to 0 (default).
execute unless score $dynalist.compare.function dynalist.in = $dynalist.compare.function dynalist.in run scoreboard players set $dynalist.compare.function dynalist.in 0