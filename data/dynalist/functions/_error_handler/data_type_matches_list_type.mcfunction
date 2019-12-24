# Author: PeerHeer
#
# Checks if the type of the input data matches the type of the input list.

# Sets $dynalist.error.success to 0 if an error occured.
execute store success score $dynalist.error.success dynalist.var run data modify storage dynalist:in List append from storage dynalist:in Data

# Remove the appended element from the list.
execute if score $dynalist.error.success dynalist.var matches 1 run data remove storage dynalist:in List[-1]