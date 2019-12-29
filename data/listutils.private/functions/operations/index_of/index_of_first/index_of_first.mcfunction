# Author: PeerHeer
#
# Check if the list contains the element that we want the index of.
# The result is equal to the last index the element was found at, if it exists in the list.
# If the element does not exist in the list, the returned index is -1.

# Check if the list contains the element.
execute if score $listutils.function listutils.in matches 0 run function listutils.private:operations/contains/exact_match/contains

# If a different function than the default was used, the list is iterated through.
execute unless score $listutils.function listutils.in matches 0 run function listutils.private:internal/length
execute unless score $listutils.function listutils.in matches 0 run scoreboard players set $listutils.success listutils.out 1

# If the list does not contain the element, the result will be -1.
execute if score $listutils.success listutils.out matches 0 run scoreboard players set $listutils.iterator.index listutils.var -1

# If the list contains the element, start iteration.
execute if score $listutils.success listutils.out matches 1 run function listutils.private:operations/index_of/index_of_first/iterate_start

# If the comparison was not successful, set the index to -1.
execute unless score $listutils.compare.result listutils.out matches 0 run scoreboard players set $listutils.iterator.index listutils.var -1

# Output the result.
scoreboard players operation $listutils.result listutils.out = $listutils.iterator.index listutils.var

# Output the success.
execute unless score $listutils.result listutils.out matches -1 run scoreboard players set $listutils.success listutils.out 1