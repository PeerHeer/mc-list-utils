# Author: PeerHeer
#
# Converts a floating-point number to a long by putting it in NBT data that is set as having a long (in this case, OwnerUUIDMost).
# Splits the long after converting it.

# Convert to long.
data modify entity @s OwnerUUIDMost set from storage dynalist.private:types TypeData

# Split long.
data modify storage dynalist.private:types TypeData set from entity @s OwnerUUIDMost
function dynalist.private:types/long/split_long