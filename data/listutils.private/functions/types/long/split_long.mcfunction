# Taken from: https://github.com/MinecraftPhi/MinecraftPhi-modules/blob/master/phi.int64/src/datapack/data/phi.int64/functions/split.mcfunction
# Modified by: PeerHeer

# Split up the long in TypeData.
data modify entity @s Color set from storage listutils.private:types TypeData

# Get the lower part of the number.
execute store result score $listutils.types.long.integral.low listutils.var run data get entity @s Color

# Get the higher part of the number.
execute store result score $listutils.types.long.integral.high listutils.var run data get storage listutils.private:types TypeData 0.00000000023283064365386962890625

# Set $listutils.types.long.positive if the high integral is 0 or higher and the low integral is negative.
# execute if score $listutils.types.long.integral.low listutils.var matches ..-1 if score $listutils.types.long.integral.high listutils.var matches 0.. run scoreboard players set $listutils.types.long.positive listutils.var 1
