# Author: PeerHeer
#
# Copies the input list to the output list and appends the input data to it.

data modify storage dynalist:out List set from storage dynalist:in List
execute store result score $dynalist.success dynalist.out run data modify storage dynalist:out List append from storage dynalist:in Data