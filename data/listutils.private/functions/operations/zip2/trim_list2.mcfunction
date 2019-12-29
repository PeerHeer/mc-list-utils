# Author: PeerHeer
#
# Trims list 2.

# Remove the last element from the Iterable and decrement its length.
data remove storage listutils.private:iterator Root.Iterable2[-1]
scoreboard players remove $listutils.operation.length2 listutils.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $listutils.operation.length2 listutils.var = $listutils.operation.length1 listutils.var run function listutils.private:operations/zip2/trim_list2