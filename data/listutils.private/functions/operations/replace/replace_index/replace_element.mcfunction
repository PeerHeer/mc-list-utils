# Author: PeerHeer
#
# Replace the list element and return the replaced value.

data modify storage listutils:out List prepend from storage listutils:in ReplaceData
data modify storage listutils:out Data set from storage listutils.private:iterator Root.Iterable[-1]