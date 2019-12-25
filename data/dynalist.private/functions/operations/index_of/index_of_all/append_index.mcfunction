# Author: PeerHeer
#
# Appends the index to the result list.

execute store result storage dynalist.private:temp TempIndex int 1 run scoreboard players get $dynalist.iterator.length dynalist.var
data modify storage dynalist:out List append from storage dynalist.private:temp TempIndex