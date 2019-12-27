# Author: PeerHeer
#
# Folds a list to 1 if any element is true, otherwise folds to 0.

# Put the data into a score.
execute store result score $dynalist.fold.temp dynalist.var run data get storage dynalist:fold In

# Break when a true element has been found.
execute unless score $dynalist.fold.temp dynalist.var matches 0 run scoreboard players set $dynalist.break dynalist.out 1

# Set the output equal to the data.
scoreboard players operation $dynalist.fold dynalist.out = $dynalist.fold.temp dynalist.var

# # If the output is not 0, make it 1.
execute unless score $dynalist.fold dynalist.out matches 0 run scoreboard players set $dynalist.fold dynalist.out 1