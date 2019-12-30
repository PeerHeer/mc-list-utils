# Author: PeerHeer
#
# Scale up by 100000.

execute store result storage listutils.private:types TypeData double 1.0 run data get storage listutils.private:types TypeData 100000.0
scoreboard players set $listutils.types.double.scale listutils.var 5
