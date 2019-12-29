# Author: PeerHeer
#
# Executes a comparison function depending on the $dynalist.function score provided by the user.
# Defaults to compare_equal.
#
# TODO: custom comparison functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.custom:compare/functions/built_in/compare_equal
execute if score $dynalist.function dynalist.in matches 1 run function dynalist.custom:compare/functions/built_in/compare_subset
execute if score $dynalist.function dynalist.in matches 2 run function dynalist.custom:compare/functions/built_in/compare_data_get

####################
# Custom functions #
####################