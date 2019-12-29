# Author: PeerHeer
#
# Unzips the input list.

# Get the list length to use in the iterator.
function listutils.private:internal/length

# Initialize iterator.
function listutils.private:operations/unzip2/initialize_iterator

# Start iteration if list length > 0.
execute unless score $listutils.iterator.length listutils.var matches 0 run function listutils.private:operations/unzip2/iterate