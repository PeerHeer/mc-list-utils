# Author: PeerHeer
#
# Compares two single-precision floating point numbers.

# Get first float
data modify storage dynalist.private:types TypeData set from storage dynalist.private:compare DataL
function dynalist.private:types/get_float

scoreboard players operation $dynalist.types.float.iter_count dynalist.var = $dynalist.types.float.iterations dynalist.var
scoreboard players operation $dynalist.compare.float.data.l dynalist.var = $dynalist.types.float.value dynalist.var

# Get second float
data modify storage dynalist.private:types TypeData set from storage dynalist.private:compare DataR
function dynalist.private:types/get_float

# Return result
execute if score $dynalist.compare.float.data.l dynalist.var = $dynalist.types.float.value dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var 0
execute if score $dynalist.compare.float.data.l dynalist.var < $dynalist.types.float.value dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var -1
execute if score $dynalist.compare.float.data.l dynalist.var > $dynalist.types.float.value dynalist.var run scoreboard players set $dynalist.compare.result dynalist.var 1