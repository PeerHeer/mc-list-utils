#> comparison_functions/default/compare_longs.mcfunction
# Compares two longs (64-bit integers).
#
#> Arguments:
#   nbtlist:compare Compare: contains the elements to compare.
#> Returns:
#   #nbtlist.compare.result nbtlist.var: -1 if the left value is smaller, 0 if the values are equal, 1 if the right value is smaller.


# Split the longs into a high and low part.
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[distance=..0.1, tag=nbtlist.long_splitter, limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["nbtlist.long_splitter"], Age: -2147483648, Duration: -1, WaitTime: -2147483648}
execute positioned -30000000 0 1600 align xyz positioned ~0.5 ~0.5 ~0.5 as @e[distance=..0.1, tag=nbtlist.long_splitter, limit=1] run function nbtlist:generic/split_longs

# Compare the longs.
execute if score #nbtlist.compare.long1.high nbtlist.var < #nbtlist.compare.long2.high nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.long1.high nbtlist.var > #nbtlist.compare.long2.high nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1
execute if score #nbtlist.compare.long1.high nbtlist.var = #nbtlist.compare.long2.high nbtlist.var if score #nbtlist.compare.long1.low nbtlist.var < #nbtlist.compare.long2.low nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.long1.high nbtlist.var = #nbtlist.compare.long2.high nbtlist.var if score #nbtlist.compare.long1.low nbtlist.var > #nbtlist.compare.long2.low nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1
execute if score #nbtlist.compare.long1.high nbtlist.var = #nbtlist.compare.long2.high nbtlist.var if score #nbtlist.compare.long1.low nbtlist.var = #nbtlist.compare.long2.low nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 0