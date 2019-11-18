# Compare using NBT
data modify storage nbtlist:compare TempCompare set from storage nbtlist:compare Compare
scoreboard players set #nbtlist.compare.success nbtlist.var 0

# Check if the data to compare is exactly equal.
execute store success score #nbtlist.compare.result nbtlist.var run data modify storage nbtlist:compare Compare[0] set from storage nbtlist:compare Compare[1]
execute if score #nbtlist.compare.result nbtlist.var matches 1 run data modify storage nbtlist:compare Compare set from storage nbtlist:compare TempCompare

# Compare integrals
execute if score #nbtlist.compare.result nbtlist.var matches 1 run function nbtlist:generic/get_float_integrals
execute if score #nbtlist.compare.result nbtlist.var matches 1 store success score #nbtlist.compare.success nbtlist.var if score #nbtlist.compare.float1.integral nbtlist.var < #nbtlist.compare.float2.integral nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.result nbtlist.var matches 1 store success score #nbtlist.compare.success nbtlist.var if score #nbtlist.compare.float1.integral nbtlist.var > #nbtlist.compare.float2.integral nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1

# Compare fractions
execute if score #nbtlist.compare.success nbtlist.var matches 0 if score #nbtlist.compare.float1.integral nbtlist.var = #nbtlist.compare.float2.integral nbtlist.var run function nbtlist:generic/get_float_fractions
execute if score #nbtlist.compare.success nbtlist.var matches 0 if score #nbtlist.compare.float1.fraction nbtlist.var < #nbtlist.compare.float2.fraction nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.success nbtlist.var matches 0 if score #nbtlist.compare.float1.fraction nbtlist.var = #nbtlist.compare.float2.fraction nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 0
execute if score #nbtlist.compare.success nbtlist.var matches 0 if score #nbtlist.compare.float1.fraction nbtlist.var > #nbtlist.compare.float2.fraction nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1
