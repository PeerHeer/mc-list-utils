# Store the data from the compare list into scores.
# The value stored is a number for long, int, short and byte values.
# The value stored is the length for a string, compound or list.
execute store result score #nbtlist.compare.value1 nbtlist.var run data get storage nbtlist:compare Compare[0]
execute store result score #nbtlist.compare.value2 nbtlist.var run data get storage nbtlist:compare Compare[1]

# Check if the data to compare is exactly equal.
execute store success score #nbtlist.compare.result nbtlist.var run data modify storage nbtlist:compare Compare[0] set from storage nbtlist:compare Compare[1]

# If the data is not exactly equal, then the stored data will be compared.
# For lengths, this will not work correctly: if lengths are exactly equal, #nbtlist.compare.result will be 1.
# This is done to avoid confusion between exact matches and equal lengths.
execute if score #nbtlist.compare.result nbtlist.var matches 1 if score #nbtlist.compare.value1 nbtlist.var < #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.result nbtlist.var matches 1 if score #nbtlist.compare.value1 nbtlist.var > #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1
