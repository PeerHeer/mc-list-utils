# Author: PeerHeer
#
# Compares the `data get` values of both NBT tags.

# Get data
execute store result score $listutils.compare.data.l listutils.var run data get storage listutils.private:compare Root.DataL
execute store result score $listutils.compare.data.r listutils.var run data get storage listutils.private:compare Root.DataR

# Return result
execute if score $listutils.compare.data.l listutils.var = $listutils.compare.data.r listutils.var run scoreboard players set $listutils.compare.result listutils.out 0
execute if score $listutils.compare.data.l listutils.var < $listutils.compare.data.r listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.data.l listutils.var > $listutils.compare.data.r listutils.var run scoreboard players set $listutils.compare.result listutils.out 1