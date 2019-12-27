# Author: PeerHeer
#
# Executes a filter function depending on the $dynalist.function score provided by the user.
# Defaults to filter_data_get.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operation_functions/filter/filter_data_get

####################
# Custom functions #
####################