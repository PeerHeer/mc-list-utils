# Author: PeerHeer
#
# Used to fold a list to the sum of its elements.

# Put data in a score.
execute store result score $dynalist.fold.temp dynalist.var run data get storage dynalist:fold In

# Add data to the sum.
scoreboard players operation $dynalist.fold dynalist.out += $dynalist.fold.temp dynalist.var