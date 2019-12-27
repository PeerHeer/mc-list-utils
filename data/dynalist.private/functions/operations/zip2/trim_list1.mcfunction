# Author: PeerHeer
#
# Trims list 1.

# Remove the last element from the Iterable and decrement its length.
data remove storage dynalist.private:iterator Root.Iterable[-1]
scoreboard players remove $dynalist.operation.length1 dynalist.var 1

# If the the list is not empty, go to the next iteration.
execute unless score $dynalist.operation.length1 dynalist.var = $dynalist.operation.length2 dynalist.var run function dynalist.private:operations/zip2/trim_list1