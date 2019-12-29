# Author: PeerHeer
#
# Returns the result of the data_at operation on success.

# Return the success.
scoreboard players set $listutils.success listutils.out 1

# Return the result.
data modify storage listutils:out Data set from storage listutils.private:iterator Root.Iterable[-1]