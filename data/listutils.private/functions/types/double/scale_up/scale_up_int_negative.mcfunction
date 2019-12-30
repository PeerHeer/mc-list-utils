# Author: PeerHeer
#
# Scale up a negative double.

execute if score $listutils.compare.long.low listutils.var matches ..-1000000000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_5
execute if score $listutils.compare.long.low listutils.var matches -999999999..-100000000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_6
execute if score $listutils.compare.long.low listutils.var matches -99999999..-10000000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_7
execute if score $listutils.compare.long.low listutils.var matches -9999999..-1000000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_8
execute if score $listutils.compare.long.low listutils.var matches -999999..-100000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_9
execute if score $listutils.compare.long.low listutils.var matches -99999..-10000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_10
execute if score $listutils.compare.long.low listutils.var matches -9999..-1000 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_11
execute if score $listutils.compare.long.low listutils.var matches -999..-100 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_12
execute if score $listutils.compare.long.low listutils.var matches -99..-10 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_13
execute if score $listutils.compare.long.low listutils.var matches -9..-1 run function listutils.private:types/double/scale_up/scale_up_funcs/scale_up_int_14
