# Author: PeerHeer
#
# Compares the low 32 bits of two longs.

execute if score $listutils.compare.long.low listutils.var = $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.out 0
execute if score $listutils.compare.long.low listutils.var < $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.out -1
execute if score $listutils.compare.long.low listutils.var > $listutils.types.long.integral.low listutils.var run scoreboard players set $listutils.compare.result listutils.out 1