# Author: PeerHeer
#
# Used to fold a list to the sum of its elements.

# Put data in a score.
execute store result score $listutils.fold.temp listutils.var run data get storage listutils:fold In

# Add data to the sum.
scoreboard players operation $listutils.fold listutils.out += $listutils.fold.temp listutils.var