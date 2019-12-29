# Author: PeerHeer
#
# Scale up by 10.

execute store result score $dynalist.types.float.value dynalist.var run data get storage dynalist.private:types TypeData 10

scoreboard players add $dynalist.types.float.iterations dynalist.var 1

execute unless score $dynalist.types.float.iter_count dynalist.var = $dynalist.types.float.iter_count dynalist.var if score $dynalist.types.float.value dynalist.var matches -99999999..99999999 run function dynalist.private:types/float/scale_up/scale_up_100
execute if score $dynalist.types.float.iter_count dynalist.var = $dynalist.types.float.iter_count dynalist.var unless score $dynalist.types.float.iterations dynalist.var = $dynalist.types.float.iter_count dynalist.var if score $dynalist.types.float.value dynalist.var matches -99999999..99999999 run function dynalist.private:types/float/scale_up/scale_up_100
