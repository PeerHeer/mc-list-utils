# Author: PeerHeer
#
# Zips the input lists.

# Get the list length to use in the iterator.
execute store result score $dynalist.operation.length1 dynalist.var run data get storage dynalist:in List
execute store result score $dynalist.operation.length2 dynalist.var run data get storage dynalist:in ZipList

# Initialize iterator.
function dynalist.private:operations/zip2/initialize_iterator

# Start iteration if list length > 0.
execute unless score $dynalist.iterator.length dynalist.var matches 0 run function dynalist.private:operations/zip2/iterate