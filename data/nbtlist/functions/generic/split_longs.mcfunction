#> generic/split_longs.mcfunction
# Taken from the MinecraftPhi project: https://github.com/MinecraftPhi/MinecraftPhi-modules
#
# Splits two longs. These longs can then be compared by comparing the higher and lower halves.
#
#> Arguments:
#   nbtlist:compare Compare: list containing the longs to be compared.
#> Returns:
#   #nbtlist.compare.long1.low nbtlist.var: the lower part of the first long.
#   #nbtlist.compare.long1.high nbtlist.var: the higher part of the first long.
#   #nbtlist.compare.long2.low nbtlist.var: the lower part of the second long.
#   #nbtlist.compare.long2.high nbtlist.var: the higher part of the second long.

# Split up the long in Compare[0]
data modify entity @s Color set from storage nbtlist:compare Compare[0]
# Get the lower part of the number.
execute store result score #nbtlist.compare.long1.low nbtlist.var run data get entity @s Color
# Get the higher part of the number.
execute store result score #nbtlist.compare.long1.high nbtlist.var run data get storage nbtlist:compare Compare[0] 0.00000000023283064365386962890625

# Split up the long in Compare[1]
data modify entity @s Color set from storage nbtlist:compare Compare[1]
# Get the lower part of the number
execute store result score #nbtlist.compare.long2.low nbtlist.var run data get entity @s Color
# Get the higher part of the number.
execute store result score #nbtlist.compare.long2.high nbtlist.var run data get storage nbtlist:compare Compare[1] 0.00000000023283064365386962890625