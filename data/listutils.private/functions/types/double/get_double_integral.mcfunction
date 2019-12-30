# Author: PeerHeer
#
# Gets the integral part of a floating-point number.
# Checks if the entity required exists. If not, it is summoned.
# First converts the floating-point number to a long and then splits the long into
# a high and low integral part.

# Check if entity exists.
function listutils.private:summon/summon_aec

# Convert float to long.
execute positioned -30000000 0 8000 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=listutils.entity, limit=1] run function listutils.private:types/double/double_to_long