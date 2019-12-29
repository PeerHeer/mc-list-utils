# Author: PeerHeer
#
# Checks if the type of the input data matches the type of the input list.

# Sets $listutils.error.success to 0 if an error occured.
execute store success score $listutils.error.success listutils.var run data modify storage listutils:in List append from storage listutils:in Data

# Remove the appended element from the list.
execute if score $listutils.error.success listutils.var matches 1 run data remove storage listutils:in List[-1]