#> comparison_functions/compare_ids.mcfunction
# Compare the ID tag of two compounds.
# Can be used to sort lists where each entry has a unique ID associated with it.
#
#> Example:
#              The list:  [{ID: 3, Data: {}}, {ID: 0, Data: {}}, {ID: 2, Data: {}}, {ID: 1, Data: {}}]
#   will be sorted into:  [{ID: 0, Data: {}}, {ID: 1, Data: {}}, {ID: 2, Data: {}}, {ID: 3, Data: {}}]
#
#> Arguments:
#   nbtlist:compare Compare: contains the elements to compare.
#> Returns:
#   #nbtlist.compare.result nbtlist.var: -1 if the left value is smaller, 0 if the values are equal, 1 if the right value is smaller.

# Store the elements to compare in scores.
execute store result score #nbtlist.compare.value1 nbtlist.var run data get storage nbtlist:compare Compare[0].ID
execute store result score #nbtlist.compare.value2 nbtlist.var run data get storage nbtlist:compare Compare[1].ID

# Return the result.
execute if score #nbtlist.compare.value1 nbtlist.var < #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var -1
execute if score #nbtlist.compare.value1 nbtlist.var = #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 0
execute if score #nbtlist.compare.value1 nbtlist.var > #nbtlist.compare.value2 nbtlist.var run scoreboard players set #nbtlist.compare.result nbtlist.var 1