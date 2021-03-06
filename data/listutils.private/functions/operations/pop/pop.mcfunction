# Author: PeerHeer
#
# Deletes an index from a list and returns the deleted element.

# Get the length of the list first.
function listutils.private:internal/length

# Convert the index from negative to positive if applicable.
scoreboard players operation $listutils.iterator.index listutils.var = $listutils.length listutils.var
execute if score $listutils.index listutils.in matches ..-1 run scoreboard players operation $listutils.iterator.index listutils.var += $listutils.index listutils.in
execute if score $listutils.index listutils.in matches 0.. run scoreboard players operation $listutils.iterator.index listutils.var = $listutils.index listutils.in

# Start the iteration if the index is valid.
execute unless score $listutils.iterator.index listutils.var matches ..-1 unless score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run function listutils.private:operations/pop/iterate_start

# If the index is invalid, return failure.
execute if score $listutils.iterator.index listutils.var matches ..-1 run scoreboard players set $listutils.success listutils.out 0
execute if score $listutils.iterator.index listutils.var >= $listutils.length listutils.var run scoreboard players set $listutils.success listutils.out 0