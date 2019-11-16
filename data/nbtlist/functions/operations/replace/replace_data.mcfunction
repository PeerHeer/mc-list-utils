#> operations/replace/replace_index.mcfunction
# Replaces an entry that matches Data2 with Data.
# Appends to nbtlist:iterator ResultList unless the data to replace was found.
#
#> Arguments:
#   nbtlist:iterator Args.Data: data to replace the entry with
#   nbtlist:iterator Args.Data: data that should match the entry to replace
#> Returns:
#   nbtlist:result Index: the index that the element was replaced at.
#   #nbtlist.operation.result.success nbtlist.var: 1 if operation successful, 0 otherwise.

# Compare the data at Iterable[0] and Args.Data2.
data remove storage nbtlist:iterator Temp
data modify storage nbtlist:iterator Temp set from storage nbtlist:iterator Args.Data
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:iterator Args.Data2
function nbtlist:generic/compare_data
data modify storage nbtlist:iterator Args.Data set from storage nbtlist:iterator Temp

# If the data is not equal, append to ResultList. This skips the element to replace and thus effectively replaces it.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 1 run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]

# Keep appending to the resultlist if the operation stops.
execute if score #nbtlist.compare.not_equal nbtlist.var matches 0 if score #nbtlist.operation.stop nbtlist.var matches 1 run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Iterable[0]
execute if score #nbtlist.compare.not_equal nbtlist.var matches 0 if score #nbtlist.operation.stop nbtlist.var matches 0 run scoreboard players add #nbtlist.operation.result.count nbtlist.var 1

# If the data is equal, set the score #nbtlist.operation.result.success nbtlist.var to 1 and return the current index.
execute if score #nbtlist.operation.stop nbtlist.var matches 0 if score #nbtlist.compare.not_equal nbtlist.var matches 0 store success score #nbtlist.operation.result.success nbtlist.var run data modify storage nbtlist:iterator ResultList append from storage nbtlist:iterator Args.Data
execute if score #nbtlist.operation.stop nbtlist.var matches 0 if score #nbtlist.compare.not_equal nbtlist.var matches 0 store result storage nbtlist:result Index int 1.0 run scoreboard players get #nbtlist.iterator.index nbtlist.var

# Set #nbtlist.operation.stop nbtlist.var to 1 if the element was found and #nbtlist.operation.get_first was set.
execute if score #nbtlist.operation.result.success nbtlist.var matches 1 if score #nbtlist.operation.get_first nbtlist.var matches 1 run scoreboard players set #nbtlist.operation.stop nbtlist.var 1
