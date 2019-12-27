# Author: PeerHeer
#
# Executes a map function depending on the $dynalist.function score provided by the user.
# Defaults to map_copy.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operation_functions/map/map_copy

####################
# Custom functions #
####################