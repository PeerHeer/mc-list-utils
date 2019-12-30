# Author: PeerHeer
#
# Compares two single-precision floating point numbers.

# Get first float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataL
function listutils.private:types/get_float

scoreboard players operation $listutils.types.float.iter_count listutils.var = $listutils.types.float.iterations listutils.var
scoreboard players operation $listutils.compare.float.data.l listutils.var = $listutils.types.float.value listutils.var

# Get second float
data modify storage listutils.private:types TypeData set from storage listutils.private:compare Root.DataR
function listutils.private:types/get_float

# Return result
execute if score $listutils.compare.float.data.l listutils.var = $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out 0
execute if score $listutils.compare.float.data.l listutils.var < $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.float.data.l listutils.var > $listutils.types.float.value listutils.var run scoreboard players set $listutils.compare.result listutils.out 1