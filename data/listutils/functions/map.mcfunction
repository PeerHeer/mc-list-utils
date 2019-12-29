# Author: PeerHeer
#
#> Description
# The 'filter' operation maps elements in a list.
#
#> Arguments
# - listutils:in List: the list to filter.
# - [OPTIONAL] $listutils.function listutils.in: the map function to use (default: 0).
#
#> Return values
# - $listutils.success listutils.out: 1 for success, 0 otherwise.
# - listutils:out List: the mapped list.

function listutils.private:map