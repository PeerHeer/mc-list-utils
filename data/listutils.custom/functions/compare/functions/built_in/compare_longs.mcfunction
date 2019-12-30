# Author: PeerHeer
#
# Compares two longs.

function listutils.custom:compare/functions/built_in/compare_data_get

execute unless score $listutils.compare.data.l listutils.var matches -2147483647..2147483646 if score $listutils.compare.result listutils.out matches 0 run function listutils.custom:compare/functions/built_in/compare_longs/compare_long_high