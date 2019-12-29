# Author: PeerHeer
#
# Scale up by 1000000000.

execute store result score $listutils.types.float.value listutils.var run data get storage listutils.private:types TypeData 1000000000

scoreboard players add $listutils.types.float.iterations listutils.var 1

execute unless score $listutils.types.float.iter_count listutils.var = $listutils.types.float.iter_count listutils.var if score $listutils.types.float.value listutils.var matches -99999999..99999999 run function listutils.private:types/float/scale_up/scale_up_10000000000
execute if score $listutils.types.float.iter_count listutils.var = $listutils.types.float.iter_count listutils.var unless score $listutils.types.float.iterations listutils.var = $listutils.types.float.iter_count listutils.var if score $listutils.types.float.value listutils.var matches -99999999..99999999 run function listutils.private:types/float/scale_up/scale_up_10000000000
