# Author: PeerHeer
#
# Executes a map function depending on the $dynalist.function score provided by the user.
# Defaults to map_copy.
#
# TODO: custom filter functions

######################
# Standard functions #
######################
execute if score $dynalist.function dynalist.in matches 0 run function dynalist.custom:fold/functions/built_in/sum
execute if score $dynalist.function dynalist.in matches 1 run function dynalist.custom:fold/functions/built_in/all
execute if score $dynalist.function dynalist.in matches 2 run function dynalist.custom:fold/functions/built_in/any

####################
# Custom functions #
####################