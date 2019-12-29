# Author: PeerHeer
#
# Executes a filter function depending on the $listutils.function score provided by the user.
# Defaults to filter_data_get.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $listutils.function listutils.in matches 0 run function listutils.custom:filter/functions/built_in/filter_data_get

####################
# Custom functions #
####################