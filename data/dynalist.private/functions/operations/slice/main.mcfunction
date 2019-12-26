# Author: PeerHeer
#
# Takes a slice from the list.

# Get the length of the list.
function dynalist.private:internal/length

# Set the default values if the indices are not set.
execute unless score $dynalist.index.first dynalist.in = $dynalist.index.first dynalist.in run scoreboard players set $dynalist.index.first dynalist.in 0
execute unless score $dynalist.index.last dynalist.in = $dynalist.index.last dynalist.in run scoreboard players operation $dynalist.index.last dynalist.in = $dynalist.length.result dynalist.var

# Convert the first index from negative to positive if applicable.
scoreboard players operation $dynalist.iterator.index.first dynalist.var = $dynalist.length.result dynalist.var
execute if score $dynalist.index.first dynalist.in matches ..-1 run scoreboard players operation $dynalist.iterator.index.first dynalist.var += $dynalist.index.first dynalist.in
execute if score $dynalist.index.first dynalist.in matches 0.. run scoreboard players operation $dynalist.iterator.index.first dynalist.var = $dynalist.index.first dynalist.in

# Convert the last index from negative to positive if applicable.
scoreboard players operation $dynalist.iterator.index.last dynalist.var = $dynalist.length.result dynalist.var
execute if score $dynalist.index.last dynalist.in matches ..-1 run scoreboard players operation $dynalist.iterator.index.last dynalist.var += $dynalist.index.last dynalist.in
execute if score $dynalist.index.last dynalist.in matches 0.. run scoreboard players operation $dynalist.iterator.index.last dynalist.var = $dynalist.index.last dynalist.in

# When both indices are valid, start creating the slice.
execute unless score $dynalist.iterator.index.first dynalist.var matches ..-1 unless score $dynalist.iterator.index.first dynalist.var >= $dynalist.length.result dynalist.var unless score $dynalist.iterator.index.last dynalist.var matches ..-1 unless score $dynalist.iterator.index.last dynalist.var > $dynalist.length.result dynalist.var unless score $dynalist.iterator.index.first dynalist.var >= $dynalist.iterator.index.last dynalist.var run function dynalist.private:operations/slice/iterate_start