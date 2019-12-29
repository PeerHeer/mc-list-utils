# Author: PeerHeer
#
# Called when the diff does not equal the list length, i.e. there are matches.

# If the success returned 0, check the types of the data and list.
execute if score $listutils.operation.success listutils.var matches 0 run function listutils.private:operations/contains/exact_match/check_types

# Output the success of the operation.
execute if score $listutils.error.success listutils.var matches 1 run scoreboard players set $listutils.success listutils.out 1