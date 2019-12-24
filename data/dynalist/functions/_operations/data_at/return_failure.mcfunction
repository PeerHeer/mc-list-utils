# Author: PeerHeer
#
# Returns the result of the data_at operation on failure.

# Return the success.
scoreboard players set $dynalist.success dynalist.out 0

# Return the result.
data modify storage dynalist:out Data set value {}