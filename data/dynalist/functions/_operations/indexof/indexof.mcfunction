# Author: PeerHeer
#
# Check if the list contains the element that we want the index of.
# The result is equal to the last index the element was found at, if it exists in the list.
# If the element does not exist in the list, the returned index is -1.

# Check if the list contains the element.
function dynalist:_operations/contains/contains

# If the list does not contain the element, the result will be -1.
execute if score $dynalist.success dynalist.out matches 0 run scoreboard players set $dynalist.iterator.length dynalist.var -1

# If the list contains the element, start iteration.
execute if score $dynalist.success dynalist.out matches 1 run function dynalist:_operations/indexof/iterate_start

# Output the result.
scoreboard players operation $dynalist.result dynalist.out = $dynalist.iterator.length dynalist.var

# Output the success.
execute unless score $dynalist.result dynalist.out matches -1 run scoreboard players set $dynalist.success dynalist.out 1