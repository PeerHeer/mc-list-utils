# Author: PeerHeer
#
# Gets a float

# Get the data in a score from storage.
execute store result score $dynalist.types.float.start dynalist.var run data get storage dynalist.private:types TypeData 1.0
scoreboard players set $dynalist.types.float.iterations dynalist.var 0

# Scale down/up to 9 significant figures.
execute unless score $dynalist.types.float.start dynalist.var matches -999999999..999999999 run function dynalist.private:types/float/scale_down

# Scale up if the float is too small
execute if score $dynalist.types.float.start dynalist.var matches -99999999..99999999 run function dynalist.private:types/float/scale_up

scoreboard players reset $dynalist.types.float.iter_count dynalist.var