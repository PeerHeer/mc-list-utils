# Author: PeerHeer
#
# Initialize the iterator.

# Reset scores.
scoreboard players set $listutils.success listutils.out 0

# Copy the list into the iterator.
data modify storage listutils.private:iterator Root.Iterable set from storage listutils:in List
data modify storage listutils.private:iterator Root.Iterable2 set from storage listutils:in ZipList

# Put the smallest length into the iterator length and trim the largest list.
execute if score $listutils.operation.length1 listutils.var > $listutils.operation.length2 listutils.var run function listutils.private:operations/zip2/trim_list1
execute if score $listutils.operation.length1 listutils.var < $listutils.operation.length2 listutils.var run function listutils.private:operations/zip2/trim_list2
execute if score $listutils.operation.length1 listutils.var = $listutils.operation.length2 listutils.var run scoreboard players operation $listutils.iterator.length listutils.var = $listutils.operation.length1 listutils.var


