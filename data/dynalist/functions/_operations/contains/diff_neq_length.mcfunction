# Author: PeerHeer
#
# Called when the diff does not equal the list length, i.e. there are matches.

# If the success returned 0, check the types of the data and list.
execute if score $dynalist.operation.success dynalist.var matches 0 run function dynalist:_operations/contains/check_types

# Output the success of the operation.
execute if score $dynalist.error.success dynalist.var matches 1 run scoreboard players set $dynalist.success dynalist.out 1