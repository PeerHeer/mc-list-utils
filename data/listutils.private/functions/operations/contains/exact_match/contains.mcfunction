# Author: PeerHeer
#
# Check if a list contains a specified element.

# Make a copy of the list.
data modify storage listutils:copies Contains.List set from storage listutils:in List

# Get the length of the list.
function listutils.private:internal/length

# Store the amount of elements that are different from the element to be searched.
execute store success score $listutils.operation.success listutils.var store result score $listutils.operation.diff listutils.var run data modify storage listutils:copies Contains.List[] set from storage listutils:in Data

# If there are elements that were not successfully modified, check the types and return the result.
execute unless score $listutils.length listutils.var matches 0 unless score $listutils.operation.diff listutils.var = $listutils.length listutils.var run function listutils.private:operations/contains/exact_match/diff_neq_length

# Output the result of the operation.
scoreboard players operation $listutils.result listutils.out = $listutils.success listutils.out