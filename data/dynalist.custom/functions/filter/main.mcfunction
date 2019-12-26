# Author: PeerHeer
#
# Executes a comparison function depending on the $dynalist.function score provided by the user.
# Defaults to compare_equal.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operation_functions/filter/filter_data_get

####################
# Custom functions #
####################