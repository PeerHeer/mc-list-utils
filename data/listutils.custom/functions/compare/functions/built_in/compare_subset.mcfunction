# Author: PeerHeer
#
# Check if Root.DataR is a subset of Root.DataL.

execute store success score $listutils.compare.result listutils.out run data modify storage listutils.private:compare Root.DataL merge from storage listutils.private:compare Root.DataR