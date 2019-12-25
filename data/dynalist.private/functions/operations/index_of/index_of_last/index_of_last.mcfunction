# Author: PeerHeer
#
# Check if the list contains the element that we want the index of.
# The result is equal to the last index the element was found at, if it exists in the list.
# If the element does not exist in the list, the returned index is -1.

# Check if the list contains the element.
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operations/contains/exact_match/contains

# If a different function than the default was used, the list is iterated through.
execute unless score $dynalist.function dynalist.in matches 0 run function dynalist.private:internal/length
execute unless score $dynalist.function dynalist.in matches 0 run scoreboard players set $dynalist.success dynalist.out 1

# If the list does not contain the element, the result will be -1.
execute if score $dynalist.success dynalist.out matches 0 run scoreboard players set $dynalist.iterator.length dynalist.var -1

# If the list contains the element, start iteration.
execute if score $dynalist.success dynalist.out matches 1 run function dynalist.private:operations/index_of/index_of_last/iterate_start

# Output the result.
scoreboard players operation $dynalist.result dynalist.out = $dynalist.iterator.length dynalist.var

# Output the success.
execute unless score $dynalist.result dynalist.out matches -1 run scoreboard players set $dynalist.success dynalist.out 1