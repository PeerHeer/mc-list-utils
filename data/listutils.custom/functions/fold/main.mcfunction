# Author: PeerHeer
#
# Executes a map function depending on the $listutils.function score provided by the user.
# Defaults to map_copy.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $listutils.function listutils.in matches 0 run function listutils.custom:fold/functions/built_in/sum
execute if score $listutils.function listutils.in matches 1 run function listutils.custom:fold/functions/built_in/all
execute if score $listutils.function listutils.in matches 2 run function listutils.custom:fold/functions/built_in/any
execute if score $listutils.function listutils.in matches 3 run function listutils.custom:fold/functions/built_in/min
execute if score $listutils.function listutils.in matches 4 run function listutils.custom:fold/functions/built_in/max

####################
# Custom functions #
####################