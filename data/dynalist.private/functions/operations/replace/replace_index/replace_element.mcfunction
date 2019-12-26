# Author: PeerHeer
#
# Replace the list element and return the replaced value.

data modify storage dynalist:out List prepend from storage dynalist:in ReplaceData
data modify storage dynalist:out Data set from storage dynalist.private:iterator Root.Iterable[-1]