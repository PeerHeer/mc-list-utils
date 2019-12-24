# Author: PeerHeer
#
# Compares two data elements to see if they are equal.
# Returns 0 if the data is equal, 1 otherwise.

execute store success score $dynalist.compare.result dynalist.var run data modify storage dynalist:compare DataL set from storage dynalist:compare DataR