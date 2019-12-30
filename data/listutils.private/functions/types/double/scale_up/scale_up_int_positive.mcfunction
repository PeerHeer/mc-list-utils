# Author: PeerHeer
#
# Scale up a postitive double.

execute if score $listutils.compare.long.low listutils.var matches 1..9 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_14
execute if score $listutils.compare.long.low listutils.var matches 10..99 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_13
execute if score $listutils.compare.long.low listutils.var matches 100..999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_12
execute if score $listutils.compare.long.low listutils.var matches 1000..9999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_11
execute if score $listutils.compare.long.low listutils.var matches 10000..99999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_10
execute if score $listutils.compare.long.low listutils.var matches 100000..999999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_9
execute if score $listutils.compare.long.low listutils.var matches 1000000..9999999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_8
execute if score $listutils.compare.long.low listutils.var matches 10000000..99999999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_7
execute if score $listutils.compare.long.low listutils.var matches 100000000..999999999 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_6
execute if score $listutils.compare.long.low listutils.var matches 1000000000.. run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_5