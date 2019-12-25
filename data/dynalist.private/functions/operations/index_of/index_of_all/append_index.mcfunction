# Author: PeerHeer
#
# Appends the index to the result list.

# Copy the score to storage.
execute store result storage dynalist.private:temp TempIndex int 1 run scoreboard players get $dynalist.iterator.length dynalist.var

# Append the index to the list.
data modify storage dynalist:out List append from storage dynalist.private:temp TempIndex

# Increase the result.
scoreboard players add $dynalist.result dynalist.out 1