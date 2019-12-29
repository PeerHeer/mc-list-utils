# Author: PeerHeer
#
# Gets the integral part of a long by splitting it in a high and low part.
# Checks if the entity required exists. If not, it is summoned.

# Reset integral parts.
# scoreboard players set $dynalist.types.numeric.integral.high dynalist.var 0
# scoreboard players set $dynalist.types.numeric.integral.low dynalist.var 0

# Checks if entity exists. If not, summons it.
function dynalist.private:summon/summon_aec

# Split the long into high and low integral parts.
execute positioned -30000000 0 8000 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=dynalist.entity, limit=1] run function dynalist.private:types/long/split_long