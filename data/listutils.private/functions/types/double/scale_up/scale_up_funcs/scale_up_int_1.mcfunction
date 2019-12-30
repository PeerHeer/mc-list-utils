# Author: PeerHeer
#
# Scale up by 10.

execute store result storage listutils.private:types TypeData double 1.0 run data get storage listutils.private:types TypeData 10.0
scoreboard players set $listutils.types.double.scale listutils.var 1
