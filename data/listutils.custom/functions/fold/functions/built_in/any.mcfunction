# Author: PeerHeer
#
# Folds a list to 1 if any element is true, otherwise folds to 0.

# Put the data into a score.
execute store result score $listutils.fold.temp listutils.var run data get storage listutils:fold In

# Break when a true element has been found.
execute unless score $listutils.fold.temp listutils.var matches 0 run scoreboard players set $listutils.break listutils.out 1

# Set the output equal to the data.
scoreboard players operation $listutils.fold listutils.out = $listutils.fold.temp listutils.var

# # If the output is not 0, make it 1.
execute unless score $listutils.fold listutils.out matches 0 run scoreboard players set $listutils.fold listutils.out 1