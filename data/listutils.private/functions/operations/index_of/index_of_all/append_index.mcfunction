# Author: PeerHeer
#
# Appends the index to the result list.

# Copy the score to storage.
execute store result storage listutils.private:temp TempIndex int 1 run scoreboard players get $listutils.iterator.length listutils.var

# Append the index to the list.
data modify storage listutils:out List append from storage listutils.private:temp TempIndex

# Increase the result.
scoreboard players add $listutils.result listutils.out 1