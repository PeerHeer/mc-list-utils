# Author: PeerHeer
#
# Check how many times a list contains a specific element.
# Returns the amount of times the element occurs in the list.

# Make a copy of the list.
data modify storage dynalist:copies Count.List set from storage dynalist:in List

# Get the length of the list.
function dynalist.private:internal/length

# Store the amount of elements that are different from the element to be searched.
execute store success score $dynalist.operation.success dynalist.var store result score $dynalist.operation.diff dynalist.var run data modify storage dynalist:copies Count.List[] set from storage dynalist:in Data

# If there are elements that were not successfully modified, check the types and return the result.
execute unless score $dynalist.length.result dynalist.var matches 0 unless score $dynalist.operation.diff dynalist.var = $dynalist.length.result dynalist.var run function dynalist.private:operations/contains/diff_neq_length

# Output the result of the operation.
scoreboard players operation $dynalist.result dynalist.out = $dynalist.length.result dynalist.var
scoreboard players operation $dynalist.result dynalist.out -= $dynalist.operation.diff dynalist.var
execute if score $dynalist.success dynalist.out matches 0 run scoreboard players set $dynalist.result dynalist.out 0