# Author: PeerHeer
#
# Scale down by 0.000001.

execute store result score $dynalist.types.float.value dynalist.var run data get storage dynalist.private:types TypeData 0.000001

scoreboard players add $dynalist.types.float.iterations dynalist.var 1

execute unless score $dynalist.types.float.iter_count dynalist.var = $dynalist.types.float.iter_count dynalist.var unless score $dynalist.types.float.value dynalist.var matches -999999999..999999999 run function dynalist.private:types/float/scale_down/scale_down_0.0000001
execute if score $dynalist.types.float.iter_count dynalist.var = $dynalist.types.float.iter_count dynalist.var unless score $dynalist.types.float.iterations dynalist.var = $dynalist.types.float.iter_count dynalist.var unless score $dynalist.types.float.value dynalist.var matches 0 run function dynalist.private:types/float/scale_down/scale_down_0.0000001
