# Author: PeerHeer
#
# Compares the `data get` values of both NBT tags.

# Get data
execute store result score $dynalist.compare.data.l dynalist.var run data get storage dynalist.private:compare Root.DataL
execute store result score $dynalist.compare.data.r dynalist.var run data get storage dynalist.private:compare Root.DataR

# Return result
execute if score $dynalist.compare.data.l dynalist.var = $dynalist.compare.data.r dynalist.var run scoreboard players set $dynalist.compare.result dynalist.out 0
execute if score $dynalist.compare.data.l dynalist.var < $dynalist.compare.data.r dynalist.var run scoreboard players set $dynalist.compare.result dynalist.out -1
execute if score $dynalist.compare.data.l dynalist.var > $dynalist.compare.data.r dynalist.var run scoreboard players set $dynalist.compare.result dynalist.out 1