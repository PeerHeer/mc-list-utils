# Author: PeerHeer
#
# Executes a comparison function depending on the $dynalist.compare.function score provided by the user.
# Defaults to compare_equal.
#
# TODO: custom comparison functions

######################
# Standard functions #
######################
execute if score $dynalist.compare.function dynalist.in matches 0 run function dynalist.private:operation_functions/compare/compare_equal
execute if score $dynalist.compare.function dynalist.in matches 1 run function dynalist.private:operation_functions/compare/compare_subset

####################
# Custom functions #
####################