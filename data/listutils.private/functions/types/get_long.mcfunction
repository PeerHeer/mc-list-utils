# Author: PeerHeer
#
# Gets the integral part of a long by splitting it in a high and low part.
# Checks if the entity required exists. If not, it is summoned.

# Reset integral parts.
# scoreboard players set $listutils.types.numeric.integral.high listutils.var 0
# scoreboard players set $listutils.types.numeric.integral.low listutils.var 0

# Checks if entity exists. If not, summons it.
function listutils.private:summon/summon_aec

# Split the long into high and low integral parts.
execute positioned -30000000 0 8000 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=listutils.entity, limit=1] run function listutils.private:types/long/split_long