# Author: PeerHeer
#
# Scale down by 0.000000001.

execute store result score $listutils.types.float.value listutils.var run data get storage listutils.private:types TypeData 0.000000001

scoreboard players add $listutils.types.float.iterations listutils.var 1

execute unless score $listutils.types.float.iter_count listutils.var = $listutils.types.float.iter_count listutils.var unless score $listutils.types.float.value listutils.var matches -999999999..999999999 run function listutils.private:types/float/scale_down/scale_down_0.0000000001
execute if score $listutils.types.float.iter_count listutils.var = $listutils.types.float.iter_count listutils.var unless score $listutils.types.float.iterations listutils.var = $listutils.types.float.iter_count listutils.var unless score $listutils.types.float.value listutils.var matches 0 run function listutils.private:types/float/scale_down/scale_down_0.0000000001
