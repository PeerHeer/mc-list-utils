# Author: PeerHeer
#
# Compares the high 32 bits of two longs.

# Get first float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataL
function listutils.private:types/get_long

scoreboard players operation $listutils.compare.long.low listutils.var = $listutils.types.long.integral.low listutils.var
scoreboard players operation $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var

# Get second float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataR
function listutils.private:types/get_long

# Return result
execute if score $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var run function listutils.custom:compare/functions/built_in/compare_longs/compare_long_low
execute if score $listutils.compare.long.high listutils.var < $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.long.high listutils.var > $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.out 1