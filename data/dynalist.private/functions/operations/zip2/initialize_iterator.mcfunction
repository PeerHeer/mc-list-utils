# Author: PeerHeer
#
# Initialize the iterator.

# Reset scores.
scoreboard players set $dynalist.success dynalist.out 0

# Copy the list into the iterator.
data modify storage dynalist.private:iterator Root.Iterable set from storage dynalist:in List
data modify storage dynalist.private:iterator Root.Iterable2 set from storage dynalist:in ZipList

# Put the smallest length into the iterator length and trim the largest list.
execute if score $dynalist.operation.length1 dynalist.var > $dynalist.operation.length2 dynalist.var run function dynalist.private:operations/zip2/trim_list1
execute if score $dynalist.operation.length1 dynalist.var < $dynalist.operation.length2 dynalist.var run function dynalist.private:operations/zip2/trim_list2
execute if score $dynalist.operation.length1 dynalist.var = $dynalist.operation.length2 dynalist.var run scoreboard players operation $dynalist.iterator.length dynalist.var = $dynalist.operation.length1 dynalist.var


