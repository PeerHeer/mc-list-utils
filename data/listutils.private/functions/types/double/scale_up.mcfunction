# Author: PeerHeer
#
# Scale up a double according to its 'long' value.

execute if score $listutils.types.double.scale listutils.var = $listutils.types.double.scale listutils.var run function listutils.private:types/double/scale_up/scale_up_next
execute if score $listutils.compare.long.high listutils.var matches 0 unless score $listutils.types.double.scale listutils.var = $listutils.types.double.scale listutils.var run function listutils.private:types/double/scale_up/scale_up_int
execute unless score $listutils.compare.long.high listutils.var matches 0 unless score $listutils.types.double.scale listutils.var = $listutils.types.double.scale listutils.var run function listutils.private:types/double/scale_up/scale_up_long