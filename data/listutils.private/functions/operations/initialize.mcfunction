# Author: PeerHeer
#
# Initializes scores and storage before doing an operation.

# Initialize success scores.
scoreboard players set $listutils.success listutils.out 0
scoreboard players set $listutils.error.success listutils.var 1

# If the comparison function is not set, set it to 0 (default).
execute unless score $listutils.function listutils.in = $listutils.function listutils.in run scoreboard players set $listutils.function listutils.in 0