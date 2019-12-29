# Author: PeerHeer
#
# Compares two single-precision floating point numbers.

# Get first float
data modify storage dynalist.private:types TypeData set from storage dynalist.private:compare DataL
function dynalist.private:types/get_long

scoreboard players operation $dynalist.compare.long.low dynalist.var = $dynalist.types.long.integral.low dynalist.var
scoreboard players operation $dynalist.compare.long.high dynalist.var = $dynalist.types.long.integral.high dynalist.var

# Get second float
data modify storage dynalist.private:types TypeData set from storage dynalist.private:compare DataR
function dynalist.private:types/get_long

# Return result
execute if score $dynalist.compare.long.high dynalist.var = $dynalist.types.long.integral.high dynalist.var if score $dynalist.compare.long.low dynalist.var = $dynalist.types.long.integral.low dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var 0
execute if score $dynalist.compare.long.high dynalist.var = $dynalist.types.long.integral.high dynalist.var if score $dynalist.compare.long.low dynalist.var < $dynalist.types.long.integral.low dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var -1
execute if score $dynalist.compare.long.high dynalist.var = $dynalist.types.long.integral.high dynalist.var if score $dynalist.compare.long.low dynalist.var > $dynalist.types.long.integral.low dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var 1

execute if score $dynalist.compare.long.high dynalist.var < $dynalist.types.long.integral.high dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var -1
execute if score $dynalist.compare.long.high dynalist.var > $dynalist.types.long.integral.high dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var 1