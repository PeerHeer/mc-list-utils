# Author: PeerHeer
#
# Check if DataR is a subset of DataL.

execute store success score $listutils.compare.result listutils.out run data modify storage listutils.private:compare Root.DataL merge from storage listutils.private:compare Root.DataR