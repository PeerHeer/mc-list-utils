# Author: PeerHeer
#
# Check if DataR is a subset of DataL.

execute store success score $dynalist.compare.result dynalist.out run data modify storage dynalist.private:compare Root.DataL merge from storage dynalist.private:compare Root.DataR