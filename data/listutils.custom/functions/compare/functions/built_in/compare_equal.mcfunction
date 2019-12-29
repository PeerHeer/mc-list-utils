# Author: PeerHeer
#
# Compares two data elements to see if they are equal.
# Returns 0 if the data is equal, 1 otherwise.

execute store success score $listutils.compare.result listutils.out run data modify storage listutils.private:compare Root.DataL set from storage listutils.private:compare Root.DataR