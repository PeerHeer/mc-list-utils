# Author: PeerHeer
#
# Copies the input list to the output list and appends the input data to it.

data modify storage listutils:out List set from storage listutils:in List
execute store result score $listutils.success listutils.out run data modify storage listutils:out List append from storage listutils:in Data