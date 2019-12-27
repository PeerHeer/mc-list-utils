# Author: PeerHeer
#
# Executes a map function depending on the $dynalist.function score provided by the user.
# Defaults to map_copy.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.private:operation_functions/fold/sum
execute if score $dynalist.function dynalist.in matches 1 run function dynalist.private:operation_functions/fold/all
execute if score $dynalist.function dynalist.in matches 2 run function dynalist.private:operation_functions/fold/any

####################
# Custom functions #
####################