# Taken from: https://github.com/MinecraftPhi/MinecraftPhi-modules/blob/master/phi.int64/src/datapack/data/phi.int64/functions/split.mcfunction
# Modified by: PeerHeer

# Split up the long in TypeData.
data modify entity @s Color set from storage dynalist.private:types TypeData

# Get the lower part of the number.
execute store result score $dynalist.types.long.integral.low dynalist.var run data get entity @s Color

# Get the higher part of the number.
execute store result score $dynalist.types.long.integral.high dynalist.var run data get storage dynalist.private:types TypeData 0.00000000023283064365386962890625

# Set $dynalist.types.long.positive if the high integral is 0 or higher and the low integral is negative.
# execute if score $dynalist.types.long.integral.low dynalist.var matches ..-1 if score $dynalist.types.long.integral.high dynalist.var matches 0.. run scoreboard players set $dynalist.types.long.positive dynalist.var 1
