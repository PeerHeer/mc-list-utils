# Author: PeerHeer
#
# Check if a list contains a specified element.

# Make a copy of the list.
data modify storage dynalist:copies Contains.List set from storage dynalist:in List

# Get the length of the list.
function dynalist.private:internal/length

# Store the amount of elements that are different from the element to be searched.
execute store success score $dynalist.operation.success dynalist.var store result score $dynalist.operation.diff dynalist.var run data modify storage dynalist:copies Contains.List[] set from storage dynalist:in Data

# If there are elements that were not successfully modified, check the types and return the result.
execute unless score $dynalist.length dynalist.var matches 0 unless score $dynalist.operation.diff dynalist.var = $dynalist.length dynalist.var run function dynalist.private:operations/contains/exact_match/diff_neq_length

# Output the result of the operation.
scoreboard players operation $dynalist.result dynalist.out = $dynalist.success dynalist.out