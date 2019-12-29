# Author: PeerHeer
#
# Executes a map function depending on the $listutils.function score provided by the user.
# Defaults to map_copy.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $listutils.function listutils.in matches 0 run function listutils.custom:map/functions/built_in/map_copy

####################
# Custom functions #
####################