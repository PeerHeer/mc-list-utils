# Author: PeerHeer
#
# Converts a floating-point number to a long by putting it in NBT data that is set as having a long (in this case, OwnerUUIDMost).
# Splits the long after converting it.

# Convert to long.
data modify entity @s OwnerUUIDMost set from storage listutils.private:types TypeData

# Split long.
data modify storage listutils.private:types TypeData set from entity @s OwnerUUIDMost
function listutils.private:types/long/split_long