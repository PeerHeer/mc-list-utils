# Author: PeerHeer
#
# Scale up a double that is smaller than the maximum value of an integer.

execute if score $listutils.compare.long.low listutils.var matches ..-1 run function listutils.private:types/double/scale_up/scale_up_int_negative
execute if score $listutils.compare.long.low listutils.var matches 0 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_15
execute if score $listutils.compare.long.low listutils.var matches 1.. run function listutils.private:types/double/scale_up/scale_up_int_positive
