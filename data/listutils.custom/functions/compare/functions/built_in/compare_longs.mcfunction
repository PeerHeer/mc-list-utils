# Author: PeerHeer
#
# Compares two single-precision floating point numbers.

# Get first float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare DataL
function listutils.private:types/get_long

scoreboard players operation $listutils.compare.long.low listutils.var = $listutils.types.long.integral.low listutils.var
scoreboard players operation $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var

# Get second float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare DataR
function listutils.private:types/get_long

# Return result
execute if score $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var if score $listutils.compare.long.low listutils.var = $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.var 0
execute if score $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var if score $listutils.compare.long.low listutils.var < $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.var -1
execute if score $listutils.compare.long.high listutils.var = $listutils.types.long.integral.high listutils.var if score $listutils.compare.long.low listutils.var > $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.var 1

execute if score $listutils.compare.long.high listutils.var < $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.var -1
execute if score $listutils.compare.long.high listutils.var > $listutils.types.long.integral.high listutils.var run scoreboard players set $listutils.compare.result listutils.var 1