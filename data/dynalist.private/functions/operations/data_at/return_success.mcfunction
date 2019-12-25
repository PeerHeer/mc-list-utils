# Author: PeerHeer
#
# Returns the result of the data_at operation on success.

# Return the success.
scoreboard players set $dynalist.success dynalist.out 1

# Return the result.
data modify storage dynalist:out Data set from storage dynalist.private:iterator Root.Iterable[-1]