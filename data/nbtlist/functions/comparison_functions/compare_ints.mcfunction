#> comparison_functions/compare_ints.mcfunction
# Compare two integers.
#
#> Arguments:
#   nbtlist:compare Compare: contains the elements to compare.
#> Returns:
#   #nbtlist.compare.result nbtlist.var: -1 if the left value is smaller, 0 if the values are equal, 1 if the right value is smaller.

# Store the elements to compare in scores.
execute store result score #nbtlist.compare.value1 nbtlist.var run data get storage nbtlist:compare Compare[0]
execute store result score #nbtlist.compare.value2 nbtlist.var run data get storage nbtlist:compare Compare[1]

# Return the result.
execute if score #nbtlist.compare.value1 nbtlist.var < #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.value1 nbtlist.var = #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 0
execute if score #nbtlist.compare.value1 nbtlist.var > #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1